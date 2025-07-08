## * AydenTFoxx @ 2025-07-08
## * 
## * Gives the player a Totem of Lycanthropy.


# Give item
give @s totem_of_undying[ \
    item_name="Totem of Lycanthropy", \
    item_model="bone", \
    lore=[ \
        { text: "Curse of Lycanthropy", italic: false, color: "red" }, \
        { text: "Saves you from death once, but at a cost.", italic: false, color: "gray" } \
    ], \
    enchantment_glint_override=true, \
    custom_data={ goldark: { items: { lycanthropy_totem: true } } } \
]