## * AydenTFoxx @ 2025-06-30 .. 2025-07-01
## * 
## * Gives the player an Essence Scroll.

##? Function Arguments:
#? StoredSpell: The stored spell entity of this scroll. Can be empty.
#? name: The name of the stored spell. Can be empty.


# Give item
$give @s[type=player] allay_spawn_egg[ \
    custom_name={ text: "$(name)", italic: false }, \
    item_name={ text: "Scroll of Essence" }, \
    item_model="flow_banner_pattern", \
    rarity="uncommon", \
    lore=[{ "text": "Right-click on a spell to extract its essence.", "color": "gray", "italic": false }], \
    enchantment_glint_override=true, \
    custom_data={ goldark: { items: { spell_essence: true }, StoredSpell: $(StoredSpell) } }, \
    entity_data={ id: "marker", Tags: [ goldark.entity.spell_essence ] } \
]

# Ignore if called by player
execute if entity @s[type=player] run return 0

# Spawn item
$summon item ~ ~ ~ { \
    Item: { \
        id: "minecraft:allay_spawn_egg", \
        components: { \
            custom_name: { text: "$(name)", italic: false }, \
            item_name: { text: "Scroll of Essence" }, \
            item_model: "flow_banner_pattern", \
            rarity: "uncommon", \
            enchantment_glint_override: true, \
            custom_data: { goldark: { items: { spell_essence: true }, StoredSpell: $(StoredSpell) } }, \
            entity_data: { id: "marker", Tags: [ goldark.entity.spell_essence ] } \
        } \
    }, \
    PickupDelay: 20s, \
    Motion: [ 0.0f, 0.2f, 0.0f ], \
    Tags: [ goldark.item_drop ] \
}

# Set Lore
execute as @n[type=item, tag=goldark.item_drop, distance=..1] unless data entity @s Item.components."minecraft:custom_data".goldark.StoredSpell.data run data modify entity @s Item.components.minecraft:lore set value [ { text: "Right-click on a spell to extract its essence.", color: "gray", italic: false } ]
execute as @n[type=item, tag=goldark.item_drop, distance=..1] if data entity @s Item.components."minecraft:custom_data".goldark.StoredSpell.Tags[1] run data modify entity @s Item.components.minecraft:lore set value [ { text: "Place on the ground to release the stored spell.", color: "white", italic: false } ]
execute as @n[type=item, tag=goldark.item_drop, distance=..1] unless data entity @s Item.components."minecraft:custom_data".goldark.StoredSpell.Tags[2] run data modify entity @s Item.components.minecraft:lore append value { text: "This spell was not converted to a Wisp.", color: "gold", italic: false }
execute as @n[type=item, tag=goldark.item_drop, distance=..1] unless data entity @s Item.components."minecraft:custom_data".goldark.StoredSpell.Tags[2] run data modify entity @s Item.components.minecraft:lore append value { text: "Placing it on an invalid location will immediately break it.", color: "red", italic: false }

# Remove tag
tag @n[type=item, tag=goldark.item_drop, distance=..1] remove goldark.item_drop