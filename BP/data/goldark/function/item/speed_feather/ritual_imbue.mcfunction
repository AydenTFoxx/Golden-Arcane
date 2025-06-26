## * AydenTFoxx @ 2025-06-23*
## * 
## * Imbues a rare artifact with twisted energies, making it stronger, but riskier.


# Tick timer
scoreboard players add @s goldark.ability_timer 1

# Rotate self
rotate @s ~14 ~


# Display ritual particles
particle enchant ~ ~0.5 ~ 0.0 0.0 0.0 0.8 3
particle smoke ~ ~0.5 ~ 0.05 0.05 0.05 0.01 1

particle soul_fire_flame ^ ^0.1 ^0.5 0.05 0.1 0.05 0.05 0
particle soul_fire_flame ^ ^0.1 ^-0.5 0.05 0.1 0.05 0.05 0

# Display ending particles
execute if score @s goldark.ability_timer matches 30.. run particle portal ~ ~0.5 ~ 0.0 0.0 0.0 0.8 2
execute if score @s goldark.ability_timer matches 40.. run particle end_rod ~ ~0.5 ~ 0.0 0.0 0.0 0.01 1

# Play follow-up sound
execute if score @s goldark.ability_timer matches 40 run playsound entity.breeze.inhale neutral @a[distance=..16] ~ ~ ~ 1 0.8


# Display final effects
execute if score @s goldark.ability_timer matches 60 run particle gust ~ ~0.5 ~ 0.0 0.0 0.0 0.0 1
execute if score @s goldark.ability_timer matches 60 run playsound entity.wither.death neutral @a[distance=..16] ~ ~ ~ 0.5 0.5
execute if score @s goldark.ability_timer matches 60 run playsound entity.breeze.wind_burst neutral @a[distance=..16] ~ ~ ~ 1 0.8

# Summon item
execute if score @s goldark.ability_timer matches 60 run function goldark:item/speed_feather

# Remove self
kill @s[scores={ goldark.ability_timer=60.. }]