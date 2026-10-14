## * AydenTFoxx @ 2025-06-23* .. 2025-07-04
## * 
## * Gives the player a Blood weapon.

##! Experimental Item; Handle with care.


# Spawn item
summon item ~ ~ ~ { \
    Item: { \
        id: "iron_sword", \
        components: { \
            item_name: "Blood Wielder", \
            rarity: "uncommon", \
            custom_data: { goldark: { items: { blood_weapon: true } } }, \
            max_damage: 125, \
            enchantments: { "goldark:demanding": 1, "goldark:decaying": 1 } \
        } \
    }, \
    Tags: [ goldark.item_drop ], \
    Motion: [ 0.0d, 0.15d, 0.0d ], \
    PickupDelay: 20s \
}

# Set random enchantment levels
execute as @n[type=item, tag=goldark.item_drop, distance=..1] store result entity @s Item.components.minecraft:enchantments."goldark:decaying" int 1.0 run random value 1..5
execute as @n[type=item, tag=goldark.item_drop, distance=..1] store result entity @s Item.components.minecraft:enchantments."goldark:demanding" int 1.0 run random value 1..3

# Remove tag
tag @n[type=item, tag=goldark.item_drop, distance=..1] remove goldark.item_drop