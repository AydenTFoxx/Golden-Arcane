## * AydenTFoxx @ 2025-06-25
## * 
## * Removes the Smite spell and returns its "waste" item.


# Spawn Item
summon item ~ ~0.1 ~ { Item: { id: "minecraft:gunpowder" }, PickupDelay: 20s, Tags: [ goldark.item_drop ] }

# Set random Motion
execute store result entity @n[type=item, tag=goldark.item_drop, distance=..1] Motion[0] float 0.01 run random value -10..10
execute store result entity @n[type=item, tag=goldark.item_drop, distance=..1] Motion[1] float 0.01 run random value 1..10
execute store result entity @n[type=item, tag=goldark.item_drop, distance=..1] Motion[2] float 0.01 run random value -10..10


# Display "break" effects
particle small_gust ~ ~ ~ 0.0 0.0 0.0 1.0 1

playsound block.conduit.deactivate block @a[distance=..16] ~ ~ ~ 0.8 0.55

# Remove self
kill @s[type=#goldark:technical]