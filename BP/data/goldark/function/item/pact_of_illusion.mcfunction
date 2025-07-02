## * AydenTFoxx @ 2025-06-26 .. 2025-06-29
## * 
## * Gives the user a Pact of Illusion.


# Give item
give @s paper[ item_model="written_book", item_name="Pact of Illusion", lore=[ { text: "\"Frees you from the shackles of your sins, for a price.\"", color: gray, italic: false } ], custom_data={ goldark: { items: { pact_of_illusion: true } } }, enchantments={ vanishing_curse: 1, binding_curse: 1 }, max_stack_size=1, consumable={ animation: "crossbow", consume_seconds: 2.8, has_consume_particles: false, sound: "ambient.basalt_deltas.mood", on_consume_effects: [ { type: "apply_effects", effects: [ { id: "darkness", ambient: true, duration: 80 }, { id: "unluck", ambient: true, amplifier: 2, duration: 1300 } ] }, { type: "play_sound", sound: "ambient.cave" } ] } ]