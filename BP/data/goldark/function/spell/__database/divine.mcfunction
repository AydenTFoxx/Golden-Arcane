## * AydenTFoxx @ 2025-06-27 .. 2025-06-30


##? DIVINE

# Deflect
execute as @n[type=item, nbt={ Item: { id: "minecraft:bone" } }, distance=..1] run return run function goldark:spell/deflect/new_ritual

# Smite
execute if block ~ ~-1 ~ gold_block as @n[type=item, nbt={ Item: { id: "minecraft:quartz" } }, distance=..1] run return run function goldark:spell/smite/new_ritual


# Artifact: Locator Compass
execute if entity @n[type=item, nbt={ Item: { id: "minecraft:shears", components: { "minecraft:custom_data": { goldark: { items: { locator_compass: true } } } } } }, distance=..1] run return run function goldark:item/locator_compass/utils/ritual_convert