## * AydenTFoxx @ 2025-06-25
## * 
## * Updates the Smite spell's effects and behavior.


## AMBIENT

# Rotate self
rotate @s ~12 ~

# Display ambient particles
particle reverse_portal ~ ~ ~ 0.02 0.05 0.02 0.02 1

#? DEBUG: Display AoE particles
execute if data storage goldark:settings { debug_mode: true } run particle end_rod ^ ^ ^8 0.0 0.0 0.0 0.01 1


## BEHAVIOR

# Tick cooldown
scoreboard players remove @s[scores={ goldark.ability_timer=1.. }] goldark.ability_timer 1
scoreboard players reset @s[scores={ goldark.ability_timer=..0 }] goldark.ability_timer


# Attack Undead mobs
execute unless score @s goldark.ability_timer matches 1.. facing entity @n[type=#undead, distance=..8] feet run function goldark:entity/light_bolt/new
execute unless score @s goldark.ability_timer matches 1.. if entity @n[type=#undead, distance=..8] run scoreboard players set @s goldark.ability_timer 20

# Poison and slow down hostile creatures
execute unless score @s goldark.ability_timer matches 1.. run effect give @e[type=!#goldark:technical, type=!#undead, predicate=goldark:entity/is_hostile, distance=..8] poison 4 1 true
execute unless score @s goldark.ability_timer matches 1.. run effect give @e[type=!#goldark:technical, predicate=goldark:entity/is_hostile, distance=..8] slowness 4 2 true


# Remove self
execute unless block ~ ~ ~ #candles[lit=true] unless block ~ ~-1 ~ #candles[lit=true] run function goldark:spell/smite/utils/remove