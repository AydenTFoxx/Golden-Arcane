## * AydenTFoxx @ 2025-06-23* .. 2025-07-08
## * 
## * Gives the player a Levitation Feather (Daedalus' Feather).


# Give item
give @s[type=player] feather[ \
    item_name={ text: "Daedalus' Feather" }, \
    rarity="uncommon", \
    enchantments={ feather_falling: 4 }, \
    consumable={ animation: "none", consume_seconds: 99999, sound: "entity.breeze.idle_ground" }, \
    custom_data={ goldark: { items: { levitation_feather: true } } }, \
    damage=1, \
    max_damage=120, \
    max_stack_size=1 \
]

# Ignore if called by player
execute if entity @s[type=player] run return 0

# Spawn item
summon item ~ ~ ~ { \
    Item: { \
        id: "minecraft:feather", \
        components: { \
            item_name: { text: "Daedalus' Feather" }, \
            rarity: "uncommon", \
            enchantments: { feather_falling: 4 }, \
            consumable: { animation: "none", consume_seconds: 99999, sound: "entity.breeze.idle_ground" }, \
            custom_data: { goldark: { items: { levitation_feather: true } } }, \
            damage: 0, \
            max_damage: 120, \
            max_stack_size: 1 \
        } \
    }, \
    PickupDelay: 20s, \
    Motion: [ 0.0f, 0.3f, 0.0f ] \
}