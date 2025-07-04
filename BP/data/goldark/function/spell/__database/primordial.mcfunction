## * AydenTFoxx @ 2025-06-26 .. 2025-07-03


##? PRIMORDIAL

# Conjure
#execute if block ~ ~-1 ~ gold_block if block ~1 ~ ~1 #candles[lit=true] if block ~1 ~ ~-1 #candles[lit=true] if block ~-1 ~ ~1 #candles[lit=true] if block ~-1 ~ ~-1 #candles[lit=true] run return run function goldark:spell/conjure/new_ritual

# Warp
execute if block ~ ~ ~ fire if predicate goldark:spell/warp positioned ~ ~1.5 ~ run return run function goldark:spell/warp/new_respawn with entity @p[distance=..16] respawn
execute if block ~ ~ ~ soul_fire if predicate goldark:spell/warp positioned ~ ~1.5 ~ run return run function goldark:spell/warp/new_death with entity @p[distance=..16] LastDeathLocation