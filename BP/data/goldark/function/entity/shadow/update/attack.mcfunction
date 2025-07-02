## * AydenTFoxx @ 2025-06-16 .. 2025-06-16
## * 
## * Swarms the nearest mob. If the sum of all Shadows' health surpasses the mob's, it dies.
## * 
## ? Inspired by Coalescipedes from Rain World.


## ATTACK

# Move towards prey
execute facing entity @n[type=!#goldark:immune_to_shadow, tag=!goldark.effect.luminance, distance=..16] feet run tp @s ^ ^ ^0.15

# Get sum of health from all nearby Shadows
execute as @e[type=interaction, tag=goldark.entity.shadow, distance=..2] run scoreboard players operation @n[type=interaction, tag=goldark.entity.shadow, distance=..1] goldark.dummy += @s goldark.health

# Get prey's Health value
execute store result score @s goldark.ability_clock run data get entity @n[type=!#goldark:immune_to_shadow, tag=!goldark.effect.luminance, distance=..1] Health

# Kill prey if Shadows' health >= prey's health
execute if score @s goldark.dummy >= @s goldark.ability_clock run effect give @n[type=!#goldark:immune_to_shadow, tag=!goldark.effect.luminance, distance=..1] slowness 1 2 true
execute if score @s goldark.dummy >= @s goldark.ability_clock run damage @n[type=!#goldark:immune_to_shadow, tag=!goldark.effect.luminance, distance=..1] 1 wither by @s

# Reset values
#scoreboard players set @s goldark.ability_clock 0
scoreboard players set @s goldark.dummy 0


# Tick despawn clock
scoreboard players add @s goldark.ability_timer 1

# Despawn
kill @s[scores={ goldark.ability_timer=1200.. }]