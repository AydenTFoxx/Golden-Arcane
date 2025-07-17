# Golden Arcane

**Golden Arcane** is a datapack/mod with a core focus on Gold as a core material of arcane motion -- magic. Its main features revolve around spells and rituals, artifacts and abilities, sacrifice and transformation -- In a world of broken gods, one must find their way through relics of the past and ruins of former greatness to survive. A world like no other, left behind to rot.

> [!NOTE]
> Golden Arcane is currently in very early stages; Many crucial features are yet to be added, or have only been implemented in superficial manner. Nonetheless, it is still a completely playable experience, if only a little incomplete one.

## Features

For a comprehensive list of features' descriptions, usage, and obtaining methods, see [here](https://github.com/AydenTFoxx/Golden-Arcane/tree/main/assets).

- *Spells*, direct manifestations of magic and willpower.
  - Spells are created by the combination of the correct *blocks*, *materials* and a *Catalyst*. A full list of all spells' "recipes" can be found [here](https://github.com/AydenTFoxx/Golden-Arcane/blob/main/assets/Spell%20Recipes.md).
  - As of **2025-07-16**, the following spells are available:
    - Warp `[Primordial]`
    - Deflect `[Divine]`
    - Smite `[Divine]`
    - Silence `[Imperial]`
    - Ward `[Imperial]`
    - Fireball `[Forbidden]`
  - Additionally, some special spells are also available:
    - Banish `[Eldritch]` (Requires a Path)
    - Conjure: Blood Weapon `[Sacrificial]` (Requires a Sacrifice)
- *Artifacts*, mundane items imbued with powerful utility magic.
  - Artifacts are craftable items with a particular unique effect attributed to it. They have limited durability, and can be used by right-clicking.
      - A full list of all artifact recipes can be found [here](https://github.com/AydenTFoxx/Golden-Arcane/blob/main/assets/Artifacts.md).
  - As of **2025-07-16**, the following artifacts are available:
    - Daedalus' Feather
    - Icarus' Gift
    - Locator Compass
  - Additionally, some other items have similar traits, but are not considered "artifacts" by the game:
    - Totem of Lycanthropy (craftable, one-use; converts the user to a Werewoof upon revival)
    - Amulet of Purity (craftable, one-use; revokes the player's Path upon use)
    - Scroll of Essence (craftable; stores a spell, then releases it in a temporary, mobile form. destroyed on use)
- New *effects* with unique behaviors and impact upon the player.
  - All effects have their own "Potion of ..." item as a craftable item on a Crafting Table. A full list of potion recipes can be found [here](https://github.com/AydenTFoxx/Golden-Arcane/blob/main/assets/Effects.md).
    - This also means there is currently no "long" (extended duration) or "strong" (stronger effect) variants for any of these potions.
  - As of **2025-07-16**, the following effects are in the game:
    - *Luminance* - Creates a dynamic source of light at the player's position. This light follows the player wherever they go, but may be obstructed by non-solid blocks at the player's position.
    - *Instant Mana* - Regenerates the player's Mana by a random amount instantly, but adds a small delay before using that magic with artifacts.
    - *Purity* - Negates all effects upon the player (including custom ones), instead inflicting a constant Weakness debuff. Also prevents Path traits and abilities from taking effect upon relevant players.
- *Arcane Paths*, a brand new mechanic akin to classes in RPGs or Origins in other mods.
  - Paths are taken by unique, yet equally dangerous means; Each choice is a bet against death itself, where one must win for a successful transformation.
    - As of **2025-07-16**, one Path is available in-game: *Werewoof*
      - The **Werewoof** is an untameable beast of the night, stopped only by the purity of Iron. Its abilities are focused on quickly taking down foes, overwhelming defenses with powerful attacks and ruthless allies on the ready.
        - The path's signature ability, *Transform: Wolf Form*, transforms the user into a highly durable, albeit unwieldy to control Wolf. The Wolf form responds to directional (WASD) and jump (Space) inputs, but also has somewhat of a mind of its own, which targets and hunts down nearby foes, oblivious to the dangers it puts itself (and the player) into.
          - The Wolf form inherits the player's *health* and *status effects* (except Purity), and has the player's name with a " [Wolf]" suffix attached to it.
          - Health is also shared to an extent by both forms; If the Wolf has less health than the untransformed player, this health is deducted upon de-transformation. Similarly, if the Wolf form has full health but the player does not, then the player receives a Regeneration effect until their health is back to full.

## Platforms

*Golden Arcane* is currently developed for **Minecraft: Java Edition**, as both a datapack and mod (or rather, a datapack bundled into a mod format).

The current target Minecraft version is: 1.21.7.

> [!WARNING]
> Only the latest Minecraft version (as of writing: 1.21.7) is officially supported. Other versions (such as 1.21.6 and 1.21.5) may be temporarily supported *as long as no breaking changes are introduced in later versions.*

Bedrock support is not currently planned; If you would like to port this datapack to an add-on, please contact @aydentfoxx on Discord.

## License

Golden Arcane is licensed under the [Apache 2.0 License](./LICENSE.md).
