## * AydenTFoxx @ 2025-06-23 .. 2025-06-25
## * 
## * Updates the Silence spell's effects and behavior.


## AMBIENT

# Rotate self
rotate @s ~12 ~

# Display anchor particles
particle minecraft:dolphin ^ ^0.5 ^0.5 0.02 0.05 0.02 0.05 2
particle minecraft:dolphin ^ ^0.5 ^-0.5 0.02 0.05 0.02 0.05 2

#? DEBUG: Display AoE particles
execute if data storage goldark:settings { debug_mode: true } run particle end_rod ^ ^ ^16 0.0 0.0 0.0 0.01 1
execute if data storage goldark:settings { debug_mode: true } run particle end_rod ^ ^ ^16 0.0 0.0 0.0 0.01 1


## BEHAVIOR

# Silence mobs
execute as @e[type=!#goldark:technical, type=!player, distance=..16, tag=!goldark.is_silenced] at @s run function goldark:spell/silence/utils/toggle_silence


# Remove self
execute unless block ~ ~ ~ #candles[lit=true] unless block ~ ~-1 ~ #candles[lit=true] run function goldark:spell/silence/utils/remove