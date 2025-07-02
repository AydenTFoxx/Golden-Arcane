## * AydenTFoxx @ 2025-06-17 .. 2025-06-25
## * 
## * Spawns one to several Shadow entities upon completion.


# Tick clock
scoreboard players add @s goldark.ability_clock 1

# Rotate self
rotate @s ~10 ~


# Display particles
particle soul_fire_flame ~ ~0.5 ~ 0.0 0.0 0.0 0.01 2
particle enchant ~ ~0.5 ~ 0.0 0.0 0.0 1 8

particle smoke ^ ^0.1 ^0.5 0.1 0.5 0.0 0.0 0
particle smoke ^ ^0.1 ^-0.5 -0.1 0.5 0.0 0.0 0

execute if score @s goldark.ability_clock matches 40.. run particle large_smoke ~ ~0.5 ~ 0.1 0.1 0.1 0.01 3


# Play sound
execute if score @s goldark.ability_clock matches 1 run playsound block.enchantment_table.use neutral @a[distance=..16] ~ ~0.5 ~ 1 0.5
execute if score @s goldark.ability_clock matches 20 run playsound block.enchantment_table.use neutral @a[distance=..16] ~ ~0.5 ~ 1 0.4
execute if score @s goldark.ability_clock matches 30 run playsound block.enchantment_table.use neutral @a[distance=..16] ~ ~0.5 ~ 1 0.3
execute if score @s goldark.ability_clock matches 40 run playsound ambient.basalt_deltas.mood neutral @a[distance=..16] ~ ~0.5 ~ 1 0.5


# Summon Shadows
execute if score @s goldark.ability_clock matches 60.. if predicate goldark:random/10 run function goldark:entity/shadow/new
execute if score @s goldark.ability_clock matches 80 run function goldark:entity/shadow/new

# Extinguish candles
execute if score @s goldark.ability_clock matches 80.. run summon wind_charge ~ ~0.5 ~ { Silent: 1b, Motion: [ 0.0f, -0.5f, 0.0f ] }

# Remove self
kill @s[scores={ goldark.ability_clock=80.. }]