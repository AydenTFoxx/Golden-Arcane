## * AydenTFoxx @ 2025-06-29 .. 2025-07-08
## * 
## * Gives the user a Locator Compass.


# Give item
give @s recovery_compass[ \
    item_name={ text: "Locator Compass" }, \
    item_model="compass", \
    rarity="uncommon", \
    lore=[ \
        { text: "Rename this item to the structure you wish to locate.", color: "gray", italic: false }, \
        { text: "Activate this artifact with Divine energy to use it.", color: "yellow", italic: false } \
    ], \
    custom_data={ goldark: { items: { locator_compass: true } } }, \
    consumable={ animation: "none", consume_seconds: 999999, has_consume_particles: false, sound: "entity.breeze.whirl" }, \
    max_damage=250, \
    max_stack_size=1, \
    lodestone_tracker={} \
]