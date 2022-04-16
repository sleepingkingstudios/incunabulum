---
---

# [Pipes and Plumbers]({{site.baseurl}}/pipes-and-plumbers)

## Weapons

Weapons are a type of equipment in the *Pipes and Plumbers* system, and are primarily used to perform [attacks]({{site.baseurl}}/pipes-and-plumbers/running-the-game#attacking-an-enemy) on enemies.

Unless otherwise specified, each character can equip up to one weapon. If a character has multiple weapons equipped for any reason (such as wielding [Koopa Shell armor]({{site.baseurl}}/pipes-and-plumbers/armor#koopa-shell) as a weapon), the character may choose which weapon to use for each attack action. The character does not gain the benefits of using the other weapon, including bonuses to Power or other passive effects.

### Understanding Weapons

Each weapon has a set of properties that define how that weapon is used:

- **Attack Bonus:** This value is added to the attribute bonus when making an attack check with this weapon. Unless otherwise noted, a weapon has an attack bonus of +0.
- **Attack Attribute:** The attribute bonus used to perform attack checks with the weapon. Unless otherwise noted, the attack attribute for a weapon is Power.
- **Defense Attribute:** The attribute score used to defend against attack checks with the weapon. Unless otherwise noted, the defense attribute for a weapon is Defense.
- **Weapon Type:** Each weapon has a Type, such as Gloves or Hammer. Generally, weapons of the same Type will have similar attack and full attack actions. Some [Techniques]({{site.baseurl}}/pipes-and-plumbers/techniques) are only available when making an attack with a given type of weapon.
- **Weapon Traits:** Some weapons have traits, which give the weapon additional properties. See [Weapon Traits](#list-of-weapon-traits), below.
- **Attack Action:** Some weapons have a custom Attack ability. Instead of performing a standard Attack, a character wielding this weapon may choose to use this ability as an [Attack action]({{site.baseurl}}/pipes-and-plumbers/running-the-game#attack-action) during their turn.
- **Full Attack:** If a weapon has a Full Attack ability, the character may choose to use this action as a [Full Attack action]({{site.baseurl}}/pipes-and-plumbers/running-the-game#full-attack-action) during their turn.
- **Special:** Some weapons have additional rules or properties; these are specified in the Special section.

### List of Weapons

<table>
  <thead>
    <tr>
      <th>Name</th>
      <th>Type</th>
      <th>Attack Bonus</th>
      <th>Attack Attribute</th>
      <th>Defense Attribute</th>
      <th>Traits</th>
    </tr>
  </thead>
  <tbody>
    {% capture weapon_names %}
      {% for item in site.data.pipes_and_plumbers.weapons %}
        {{ item | first }}
      {% endfor %}
    {% endcapture %}
    {% assign sorted_weapon_names = weapon_names | split: " " | sort_natural %}
    {% for weapon_name in sorted_weapon_names %}
      {% assign weapon = site.data.pipes_and_plumbers.weapons[weapon_name] %}
      <tr>
        <td>
          <a href="#{{ weapon.name | slugify }}">{{ weapon.name }}</a>
        </td>
        <td>{{ weapon.type }}</td>
        <td>{{ weapon.attack_bonus | default: "+0" }}</td>
        <td>{{ weapon.attack_attribute | default: "Power" }}</td>
        <td>{{ weapon.defense_attribute | default: "Defense" }}</td>
        <td>
          {% assign tag_count = weapon.tags | size %}
          {% if tag_count > 0 %}
            {{ weapon.tags | join: ", " }}
          {% else %}
            -
          {% endif %}
        </td>
      </tr>
      <tr>
        <td colspan="6">{{ weapon.description }}</td>
      </tr>
    {% endfor %}
  </tbody>
</table>

{% for weapon_name in sorted_weapon_names %}
  {% assign weapon = site.data.pipes_and_plumbers.weapons[weapon_name] %}
  <h4>{{ weapon.name }}</h4>
  <p>
    {{ weapon.type }}
    {% assign tag_count = weapon.tags | size %}
    {% if tag_count > 0 %}
      -
      {% assign tags = weapon.tags | join: ", " %}
      {{ tags }}
    {% endif %}
    {% if weapon.attack_bonus %}
      <br>
      <em>Attack Bonus:</em> {{ weapon.attack_bonus }}
    {% endif %}
    {% if weapon.attack_attribute %}
      <br>
      <em>Attack Attribute:</em> {{ weapon.attack_attribute }}
    {% endif %}
    {% if weapon.defense_attribute %}
      <br>
      <em>Defense Attribute:</em> {{ weapon.defense_attribute }}
    {% endif %}
  </p>
  <p>{{ weapon.description | markdownify }}</p>
  {% if weapon.attack %}
  <dl>
    <dt>Attack Action:</dt>
    <dd>{{ weapon.attack }}</dd>
  </dl>
  {% endif %}
  {% if weapon.full_attack %}
  <dl>
    <dt>Full Attack:</dt>
    <dd>{{ weapon.full_attack }}</dd>
  </dl>
  {% endif %}
  {% if weapon.special %}
  <dl>
    <dt>Special:</dt>
    <dd>{{ weapon.special | markdownify }}</dd>
  </dl>
  {% endif %}
{% endfor %}

### List of Weapon Traits

Some weapons have traits, which give the weapon additional properties.

#### Ignore Armored

A weapon with the Ignore Armored trait ignores the [Armored]({{site.baseurl}}/pipes-and-plumbers/glossary#armored) property of the attack target.

#### Ignore Flying

A weapon with the Ignore Flying trait ignores the [Flying]({{site.baseurl}}/pipes-and-plumbers/glossary#flying) property of the attack target.

#### Ranged

A weapon with the Ranged trait is a ranged weapon, and can attack enemies even if they are not adjacent to the character.

[Back to Home]({{site.baseurl}}/)
|
[Back to Pipes and Plumbers]({{site.baseurl}}/pipes-and-plumbers)
