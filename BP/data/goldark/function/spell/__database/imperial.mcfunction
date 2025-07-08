## * AydenTFoxx @ 2025-06-27 .. 2025-07-03


##? IMPERIAL

# Silence
execute as @n[type=item, nbt={ Item: { id: "minecraft:echo_shard" } }, distance=..1] run return run function goldark:spell/silence/new_ritual

# Ward
execute as @n[type=item, nbt={ Item: { id: "minecraft:redstone" } }, distance=..1] positioned ~ ~0.5 ~ run return run function goldark:spell/ward/new_ritual