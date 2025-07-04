## * AydenTFoxx @ 2025-07-01 .. 2025-07-04
## * 
## * Gives the player a Potion of Mana.


# Give item
give @s potion[ \
    custom_data={ goldark: { items: { potion_mana: true } } }, \
    potion_contents={ custom_color: 2345678, custom_effects: [ { id: "absorption", duration: 100 } ] }, \
    custom_name={ text: "Potion of Mana", italic: false }, \
    enchantment_glint_override=true, \
    use_cooldown={ seconds: 1.6, cooldown_group: "goldark:potions/mana" }, \
    max_stack_size=16 \
]