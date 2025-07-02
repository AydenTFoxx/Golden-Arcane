## * AydenTFoxx @ 2025-06-23*
## * 
## * Gives the player a Blood weapon.

##! Experimental Item; Handle with care.


# Give item
give @s iron_sword[ item_name="Blood Wielder", rarity="uncommon", consumable={ animation: "block", consume_seconds: 999999, has_consume_particles: false, sound: "minecraft:block.sculk.charge" }, custom_data={ goldark: { items: { blood_weapon: true, weapon_mode: "block" } } } ]