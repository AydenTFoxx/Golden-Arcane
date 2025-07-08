## * AydenTFoxx @ 2025-06-23* .. 2025-07-06
## * 
## * Gives the player a Potion of Luminance.


# Give item
give @s potion[ \
    custom_data={ goldark: { items: { potion_luminance: true } } }, \
    potion_contents={ custom_color: 15519300, custom_effects: [ { id: "glowing", ambient: true, duration: 3600 } ] }, \
    custom_name={ text: "Potion of Luminance", italic: false }, \
    lore=[ { text: "Luminance (03:00)", italic: false, color: "blue" } ], \
    rarity="uncommon", \
    item_model="honey_bottle", \
    tooltip_display={ hidden_components: [ "potion_contents" ] } \
]