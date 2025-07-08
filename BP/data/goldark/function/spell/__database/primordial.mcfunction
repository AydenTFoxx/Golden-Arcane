## * AydenTFoxx @ 2025-06-26 .. 2025-07-06


##? PRIMORDIAL

# Warp Gate
execute if block ~ ~ ~ fire if predicate goldark:spell/warp positioned ~ ~1.5 ~ run return run function goldark:spell/warp/new_respawn with entity @p[distance=..16] respawn
execute if block ~ ~ ~ soul_fire if predicate goldark:spell/warp positioned ~ ~1.5 ~ run return run function goldark:spell/warp/new_death with entity @p[distance=..16] LastDeathLocation