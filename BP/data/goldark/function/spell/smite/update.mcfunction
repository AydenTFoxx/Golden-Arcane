## * AydenTFoxx @ 2025-06-25 .. 2025-07-01
## * 
## * Updates the Smite spell's effects and behavior.


## AMBIENT

# Rotate self
rotate @s ~16 ~

# Display ambient particles
particle soul_fire_flame ~ ~0.5 ~ 0.02 0.1 0.02 0.01 1

execute unless score @s goldark.ability_timer matches 1.. run particle electric_spark ^ ^0.2 ^0.5 0.0 0.0 0.0 0.0 1

#? DEBUG: Display AoE particles
execute if data storage goldark:settings { debug_mode: true } run particle end_rod ^ ^ ^12 0.0 0.0 0.0 0.01 1
execute if data storage goldark:settings { graphics: "fancy" } run particle dust{ color: 9834245, scale: 1.0 } ^ ^ ^8 0.0 0.1 0.0 0.05 0 normal @a[tag=goldark.is_hostile]


## BEHAVIOR

# Tick cooldown
scoreboard players remove @s[scores={ goldark.ability_timer=1.. }] goldark.ability_timer 1
scoreboard players reset @s[scores={ goldark.ability_timer=..0 }] goldark.ability_timer

# Attack Undead mobs
execute unless score @s goldark.ability_timer matches 1.. facing entity @n[type=#undead, distance=..12] feet positioned ~ ~1 ~ run function goldark:entity/light_bolt/new
execute unless score @s goldark.ability_timer matches 1.. if entity @n[type=#undead, distance=..12] run scoreboard players set @s goldark.ability_timer 20

execute unless score @s goldark.ability_timer matches 1.. facing entity @p[tag=goldark.is_hostile, predicate=goldark:entity/is_vulnerable, distance=..12] feet positioned ~ ~1 ~ run function goldark:entity/light_bolt/new
execute unless score @s goldark.ability_timer matches 1.. if entity @p[tag=goldark.is_hostile, predicate=goldark:entity/is_vulnerable, distance=..12] run scoreboard players set @s goldark.ability_timer 20

# Poison and slow down hostile creatures
effect give @e[type=!#goldark:technical, type=!#undead, predicate=goldark:entity/is_hostile, distance=..8] wither 4 0
effect give @e[type=!#goldark:technical, predicate=goldark:entity/is_hostile, distance=..8] slowness 4 2


# Remove self
execute if entity @s[tag=goldark.is_essence] run return run function goldark:spell/smite/utils/remove
execute unless block ~ ~ ~ #candles[lit=true] unless block ~ ~-1 ~ #candles[lit=true] run function goldark:spell/smite/utils/remove