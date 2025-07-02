## * AydenTFoxx @ 2025-06-23 .. 2025-06-30
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

# Apply Magic Sickness to players
scoreboard players set @a[distance=..8] goldark.ability_timer 20

tag @a[distance=..8, tag=!goldark.magic_sickness] add goldark.magic_sickness


# Remove self
execute if entity @s[tag=goldark.is_essence] run return run function goldark:spell/silence/utils/remove
execute unless block ~ ~ ~ #candles[lit=true] unless block ~ ~-1 ~ #candles[lit=true] run function goldark:spell/silence/utils/remove