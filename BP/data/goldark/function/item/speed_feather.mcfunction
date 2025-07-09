## * AydenTFoxx @ 2025-06-23* .. 2025-07-08
## * 
## * Gives the player a Speed Feather (Icarus' Gift).


# Give item
give @s[type=player] feather[ \
    item_name={ text: "Icarus' Gift" }, \
    item_model="wind_charge", \
    rarity="uncommon", \
    enchantments={ soul_speed: 3, feather_falling: 3 }, \
    consumable={ animation: "none", consume_seconds: 99999, sound: "entity.breeze.idle_ground" }, \
    custom_data={ goldark: { items: { speed_feather: true } } }, \
    damage=0, \
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
            item_name: { text: "Icarus' Gift" }, \
            item_model: "wind_charge", \
            rarity: "uncommon", \
            enchantments: { soul_speed: 3, feather_falling: 3 }, \
            consumable: { animation: "none", consume_seconds: 99999, sound: "entity.breeze.idle_ground" }, \
            custom_data: { goldark: { items: { speed_feather: true } } }, \
            damage: 0, \
            max_damage: 120, \
            max_stack_size: 1 \
        } \
    }, \
    PickupDelay: 20s, \
    Motion: [ 0.0f, 0.5f, 0.0f ] \
}