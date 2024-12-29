# frozen_string_literal: true

require 'fileutils'
require 'yaml'

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

        return if File.exist?(dirname)

        say "Generating directory #{dirname}"

        FileUtils.mkdir(dirname) unless dry_run?
      end

      def generate_file(filepath, text = nil, **data)
        ensure_directory(filepath)

        contents = generate_markdown(text, **data)

        say_file(filepath, contents)

        File.write(filepath, contents) unless dry_run?
      end

      def generate_item(campaign:, name:, slug:, **)
        filepath = File.join(
          item_dir(campaign:, name:, slug:, **),
          item_filename(campaign:, name:, slug:, **)
        )
        data     = item_data(campaign:, name:, slug:, **)

        generate_file(filepath, **data)
      end

      def generate_markdown(text = nil, **data)
        markdown = +''

        if data.empty?
          markdown << "---\n"
        else
          safe_data = tools.hash_tools.convert_keys_to_strings(data)

          markdown << YAML.safe_dump(safe_data)
        end

        markdown << '---' << "\n"

        markdown << "\n" << text << "\n" if text

        markdown
      end

      def generate_page(campaign:, name:, slug:, **)
        filepath = File.join(
          page_dir(campaign:, name:, slug:, **),
          page_filename(campaign:, name:, slug:, **)
        )
        data     = page_data(campaign:, name:, slug:, **)
        text     = page_text(campaign:, name:, slug:, **)

        generate_file(filepath, text, **data)
      end

      def generate_slug(string)
        return if string.nil?

        string
          .sub(/\AThe /, '')
          .gsub(/[^A-Za-z _-]/, '')
          .then { |str| tools.string_tools.underscore(str) }
          .tr(' ', '_')
          .tr('_', '-')
      end

      def item_data(campaign:, name:, slug:, **)
        {
          campaign: campaign,
          title:    name,
          slug:     slug
        }
      end

      def item_filename(slug:, **)
        "#{slug}.md"
      end

      def item_dir(campaign:, slug:, **)
        [
          'collections',
          "_#{tools.string_tools.pluralize(type)}",
          campaign
        ]
          .then { |ary| File.join(*ary) }
      end

      def page_data(campaign:, name:, slug:, **)
        {
          campaign: campaign,
          title:    name,
          slug:     slug
        }
      end

      def page_dir(campaign:, slug:, **)
        [
          'campaigns',
          campaign,
          "#{tools.string_tools.pluralize(type)}"
        ]
          .then { |ary| File.join(*ary) }
      end

      def page_filename(slug:, **)
        "#{slug}.md"
      end

      def page_text(**)
        "{% include pages/#{type}.md %}"
      end

      def say_file(filepath, contents)
        message = +"Generating file #{filepath} with contents:"
        message << "\n"
        message << "\n" << tools.string_tools.indent(contents, 2) << "\n"
        message << "\n"

        say message
      end
    end

    class GenerateAdventure < Task
      include Generate

      namespace 'generate'

      desc 'adventure NAME', 'Generates an adventure for a campaign'
      option 'campaign', required: !ENV.key?('CAMPAIGN')
      option 'dry_run',  type: :boolean
      option 'index',    type: :numeric, required: true
      option 'omake',    type: :boolean
      def adventure(name)
        campaign = options.fetch(:campaign, ENV['CAMPAIGN'])
        index    = options.fetch(:index)
        omake    = options.fetch(:omake, false)
        slug     = generate_slug(name)

        generate_item(
          campaign: campaign,
          index:    index,
          omake:    omake,
          name:     name,
          slug:     slug
        )

        generate_page(
          campaign: campaign,
          index:    index,
          omake:    omake,
          name:     name,
          slug:     slug
        )
      end

      private

      def item_data(campaign:, index:, name:, omake:, slug:, **)
        {
          campaign:,
          campaign_index: index,
          omake:,
          name:,
          slug:
        }
      end

      def item_filename(index:, omake:, slug:, **)
        if omake
          "x#{index}-#{slug}.md"
        else
          format('%02i-%s.md', index, slug)
        end
      end

      def type
        'adventure'
      end
    end

    class GenerateCharacter < Task
      include Generate

      namespace 'generate'

      desc 'character NAME', 'Generates a character for a campaign'
      option 'campaign', required: !ENV.key?('CAMPAIGN')
      option 'dry_run',  type: :boolean
      option 'location'
      option 'organization'
      def character(name)
        campaign     = options.fetch(:campaign, ENV['CAMPAIGN'])
        location     = options[:location]
        organization = options[:organization]
        slug         = generate_slug(name)

        generate_item(
          campaign:     campaign,
          location:     location,
          organization: organization,
          name:         name,
          slug:         slug
        )

        generate_page(
          campaign: campaign,
          name:     name,
          slug:     slug
        )
      end

      private

      def build_organizations(organization_name)
        [
          {
            name:    organization_name,
            slug:    generate_slug(organization_name),
            details: ''
          }
        ]
      end

      def item_data(campaign:, name:, slug:, location: nil, organization:, **)
        data = {
          campaign: campaign,
          name:     name,
          slug:     slug
        }

        data = data.merge(location: location) unless location.nil?

        unless organization.nil?
          organizations = build_organizations(organization)
          data          = data.merge(organizations: organizations)
        end

        data
      end

      def item_dir(campaign:, slug:, location: nil, organization: nil, **)
        return File.join(super, generate_slug(location)) unless location.nil?

        unless organization.nil?
          return File.join(super, generate_slug(organization))
        end

        super
      end

      def type
        'character'
      end
    end

    class GenerateLocation < Task
      include Generate

      namespace 'generate'

      desc 'location NAME', 'Generates a location for a campaign'
      option 'campaign', required: !ENV.key?('CAMPAIGN')
      option 'dry_run',  type: :boolean
      option 'location'
      def location(name)
        campaign = options.fetch(:campaign, ENV['CAMPAIGN'])
        location = options[:location]
        slug     = generate_slug(name)

        generate_item(
          campaign: campaign,
          location: location,
          name:     name,
          slug:     slug
        )
      end

      private

      def item_data(campaign:, name:, slug:, location: nil, **)
        data = data = {
          campaign: campaign,
          name:     name,
          slug:     slug
        }

        if location
          data = data.merge(location: location)
        end

        if name.start_with?('The ')
          data = data.merge(heading: "the-#{slug}")
        end

        data
      end

      def item_dir(campaign:, slug:, location: nil, **)
        return super if location.nil?

        File.join(super, generate_slug(location))
      end

      def type
        'location'
      end
    end

    class GenerateOrganization < Task
      include Generate

      namespace 'generate'

      desc 'organization NAME', 'Generates an organization for a campaign'
      option 'campaign', required: !ENV.key?('CAMPAIGN')
      option 'dry_run',  type: :boolean
      def organization(name)
        campaign = options.fetch(:campaign, ENV['CAMPAIGN'])
        slug     = generate_slug(name)

        generate_item(
          campaign: campaign,
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

      def item_data(campaign:, name:, slug:, **)
        {
          campaign: campaign,
          name:     name,
          slug:     slug
        }
      end

      def page_dir(campaign:, slug:, **)
        [
          'campaigns',
          campaign,
          'setting',
          "#{tools.string_tools.pluralize(type)}"
        ]
          .then { |ary| File.join(*ary) }
      end

      def type
        'organization'
      end
    end
  end
end
