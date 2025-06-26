## * AydenTFoxx @ 2025-06-23 .. 2025-06-25
## * 
## * Removes the Silence spell and returns its "waste" item.


# Spawn Item
summon item ~ ~0.1 ~ { Item: { id: "minecraft:amethyst_shard" }, PickupDelay: 20s, Tags: [ goldark.item_drop ] }

# Set random Motion
execute store result entity @n[type=item, tag=goldark.item_drop, distance=..1] Motion[0] float 0.01 run random value -10..10
execute store result entity @n[type=item, tag=goldark.item_drop, distance=..1] Motion[1] float 0.01 run random value 1..10
execute store result entity @n[type=item, tag=goldark.item_drop, distance=..1] Motion[2] float 0.01 run random value -10..10


# Display "break" effects
particle flash ~ ~0.5 ~ 0.0 0.0 0.0 1.0 1

playsound block.glass.break block @a[distance=..16] ~ ~ ~ 0.8 0.6

# Remove self
kill @s[type=#goldark:technical]