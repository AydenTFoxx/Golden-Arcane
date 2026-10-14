## * AydenTFoxx @ 2025-07-08
## * 
## * Gives the player an Amulet of Purity.


# Give item
give @s charcoal[ \
    item_name="Amulet of Purity", \
    item_model="nether_star", \
    rarity="rare", \
    lore=[ \
        { text: "Curse of Purity", italic: false, color: "red" }, \
        { text: "Revokes your past sins, at the cost of your life.", italic: false, color: "gray" } \
    ], \
    enchantment_glint_override=true, \
    consumable={ \
        animation: "drink", \
        sound: "ambient.cave", \
        consume_seconds: 2.5, \
        has_consume_particles: false, \
        on_consume_effects: [ \
            { \
                type: "apply_effects", \
                effects: [ \
                    { \
                        id: "wither", \
                        ambient: true, \
                        amplifier: 2, \
                        duration: 240 \
                    }, \
                    { \
                        id: "darkness", \
                        duration: 200 \
                    }, \
                    { \
                        id: "weakness", \
                        duration: 480 \
                    }, \
                    { \
                        id: "mining_fatigue", \
                        duration: 300 \
                    } \
                ] \
            }, \
            { type: "play_sound", "sound": "entity.zombie_villager.converted" } \
        ], \
    }, \
    custom_data={ goldark: { items: { purity_totem: true } } }, \
    max_stack_size=1 \
]