## * AydenTFoxx @ 2025-07-07
## * 
## * Gives the player a Potion of Purity.


# Give item
give @s potion[ \
    custom_name={ text: "Potion of Purity", italic: false }, \
    lore=[ { text: "Purity (01:20)", color: "red", italic: false } ], \
    potion_contents={ custom_color: 7793855 }, \
    tooltip_display={ hidden_components: [ "potion_contents" ] }, \
    rarity="uncommon", \
    enchantment_glint_override=true, \
    custom_data={ goldark: { items: { potion_purity: true } } } \
]