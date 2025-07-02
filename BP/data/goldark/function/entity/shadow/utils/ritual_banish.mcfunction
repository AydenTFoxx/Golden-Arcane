## * AydenTFoxx @ 2025-06-17
## * 
## * Kills all Shadow entities in a large radius upon completion.


# Tick clock
scoreboard players add @s goldark.ability_clock 1

# Rotate self
rotate @s ~12 ~


# Display particles
particle small_flame ~ ~0.5 ~ 0.0 0.0 0.0 0.01 1
particle portal ~ ~0.5 ~ 0.0 0.0 0.0 0.8 3

particle white_smoke ^ ^0.2 ^0.5 0.1 0.5 0.0 0.0 0
particle white_smoke ^ ^0.2 ^-0.5 -0.1 0.5 0.0 0.0 0

execute if score @s goldark.ability_clock matches 40.. run particle end_rod ~ ~0.5 ~ 0.1 0.1 0.1 0.05 1
execute if score @s goldark.ability_clock matches 40.. run particle dust_plume ~ ~0.5 ~ 0.1 0.1 0.1 0.01 2


# Play sound
execute if score @s goldark.ability_clock matches 1 run playsound block.enchantment_table.use neutral @a[distance=..16] ~ ~0.5 ~ 1 0.7
execute if score @s goldark.ability_clock matches 20 run playsound block.enchantment_table.use neutral @a[distance=..16] ~ ~0.5 ~ 1 0.9
execute if score @s goldark.ability_clock matches 40 run playsound block.enchantment_table.use neutral @a[distance=..16] ~ ~0.5 ~ 1 1.2
execute if score @s goldark.ability_clock matches 60..70 if predicate goldark:random/50 run playsound item.firecharge.use neutral @a[distance=..16] ~ ~0.5 ~ 1 1.2
execute if score @s goldark.ability_clock matches 75 run playsound ui.toast.challenge_complete neutral @a[distance=..16] ~ ~0.5 ~ 1.2 1.5


# Summon Shadows
execute if score @s goldark.ability_clock matches 60.. run scoreboard players remove @n[type=interaction, tag=goldark.entity.shadow, distance=..8, sort=random, scores={ goldark.health=1.. }] goldark.health 1

# Extinguish candles
execute if score @s goldark.ability_clock matches 80.. run summon breeze_wind_charge ~ ~0.5 ~ { Silent: 1b, Motion: [ 0.0f, -0.5f, 0.0f ] }

# Remove self
kill @s[scores={ goldark.ability_clock=80.. }]