# frozen_string_literal: true

require 'fileutils'

require 'sleeping_king_studios/tools'
require 'thor'

module Incunabulum
  module Cli
    class Task < Thor
      def self.exit_on_failure?
        true
      end

      private

      def tools
        SleepingKingStudios::Tools::Toolbelt.instance
      end
    end

    module Generate
      private

      def dry_run?
        options[:dry_run]
      end

      def ensure_directory(filepath)
        dirname = File.dirname(filepath)

        return if File.exists?(dirname)

        say "Generating directory #{dirname}"

        FileUtils.mkdir(dirname) unless dry_run?
      end


      def generate_file(filepath, text = nil, **data)
        ensure_directory(filepath)

        contents = generate_markdown(text, **data)

        say_file(filepath, contents)

        File.write(filepath, contents) unless dry_run?
      end

      def generate_markdown(text = nil, **data)
        markdown = +'---' << "\n"

        data.each do |key, value|
          markdown << key.to_s << ': ' << value.to_s << "\n"
        end

        markdown << '---' << "\n"

        markdown << "\n" << text << "\n" if text

        markdown
      end

      def generate_slug(string)
        return if string.nil?

        tools
          .string_tools
          .underscore(string)
          .tr(' ', '_')
          .tr('_', '-')
      end

      def say_file(filepath, contents)
        message = +"Generating file #{filepath} with contents:"
        message << "\n"
        message << "\n" << tools.string_tools.indent(contents, 2) << "\n"
        message << "\n"

        say message
      end
    end

    class GenerateCharacter < Task
      include Generate

      namespace 'generate'

      desc 'character NAME', 'Generates a character for a campaign'
      option 'campaign', required: !ENV.key?('CAMPAIGN')
      option 'dry_run',  type: :boolean
      option 'location'
      def character(name)
        campaign = options.fetch(:campaign, ENV['CAMPAIGN'])
        location = options[:location]
        slug     = generate_slug(name)

        generate_item(
          campaign: campaign,
          location: location,
          name:     name,
          slug:     slug
        )

        generate_page(
          campaign: campaign,
          name:     name,
          slug:     slug
        )
      end

      private

      def generate_item(campaign:, name:, slug:, location: nil)
        filepath = item_path(campaign: campaign, location: location, slug: slug)
        data     = {
          campaign: campaign,
          name:     name,
          slug:     slug
        }
        data     = data.merge(location: location) if location

        generate_file(filepath, **data)
      end

      def generate_page(campaign:, name:, slug:)
        filepath = page_path(campaign: campaign, slug: slug)
        data     = {
          campaign: campaign,
          title:    name,
          slug:     slug
        }
        text     = '{% include pages/character.md %}'

        generate_file(filepath, text, **data)
      end

      def item_path(campaign:, slug:, location: nil)
        [
          'collections',
          '_characters',
          campaign,
          generate_slug(location),
          "#{slug}.md"
        ]
          .compact
          .then { |ary| File.join(*ary) }
      end

      def page_path(campaign:, slug:)
        [
          'campaigns',
          campaign,
          'characters',
          "#{slug}.md"
        ]
          .then { |ary| File.join(*ary) }
      end
    end
  end
end
