## * AydenTFoxx @ 2025-06-29
## * 
## * Converts a Locator Ritual to a proper, usable format.


# Display conversion effects
particle soul_fire_flame ~ ~0.5 ~ 0.0 0.0 0.0 0.05 12
particle end_rod ~ ~1 ~ 0.0 0.0 0.0 0.1 16
particle flash ~ ~0.5 ~ 0.0 0.0 0.0 1.0 1

playsound block.enchantment_table.use neutral @a[distance=..16] ~ ~ ~ 1 0.8


# Activate item
execute as @n[type=item, nbt={ Item: { id: "minecraft:shears", components: { "minecraft:custom_data": { goldark: { items: { locator_compass: true } } } } } }, distance=..1] at @s run function goldark:item/locator_compass/utils/activate_compass

# Return success
return 1