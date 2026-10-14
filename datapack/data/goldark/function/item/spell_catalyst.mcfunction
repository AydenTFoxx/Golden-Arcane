## * AydenTFoxx @ 2025-06-27 .. 2025-06-30
## * 
## * Gives the player a Magic Catalyst.

##? Function Arguments:
#? name: The name prefix of the catalyst item; Rendered as "<name> Catalyst".
#? model: The item model for the catalyst item. Must be an item resource location.
#? type: An Object describing which spell types the catalyst entity can trigger.


# Give item
$give @s[type=player] sheep_spawn_egg[ \
    item_name={ text: "$(name) Catalyst" }, \
    item_model=$(model), \
    rarity="uncommon", \
    lore=[ { translate: "Use to activate %s type spells.", color: "gray", italic: false, with: [ { text: $(name), color: "yellow" } ] } ], \
    enchantment_glint_override=true, \
    custom_data={ goldark: { items: { spell_catalyst: true } } }, \
    entity_data={ id: "marker", Tags: [ goldark.entity.spell_catalyst ], data: { goldark: { spell_catalyst: { name: $(name), type: $(type), model: $(model) } } } } \
]

# Ignore if called by player
execute if entity @s[type=player] run return 0

# Spawn item
$summon item ~ ~ ~ { \
    Item: { \
        id: "minecraft:sheep_spawn_egg", \
        components: { \
            item_name: { text: "$(name) Catalyst" }, \
            item_model: $(model), \
            rarity: "uncommon", \
            lore: [ { translate: "Use to activate %s type spells.", color: "gray", italic: false, with: [ { text: $(name), color: "yellow" } ] } ], \
            enchantment_glint_override: true, \
            custom_data: { goldark: { items: { spell_catalyst: true } } }, \
            entity_data: { id: "marker", Tags: [ goldark.entity.spell_catalyst ], data: { goldark: { spell_catalyst: { name: $(name), type: $(type), model: $(model) } } } } \
        } \
    }, \
    PickupDelay: 20s, \
    Motion: [ 0.0f, 0.2f, 0.0f ], \
}