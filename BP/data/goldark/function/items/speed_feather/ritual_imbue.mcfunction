scoreboard players add @s goldark.ability_timer 1

rotate @s ~14 ~

particle enchant ~ ~0.5 ~ 0.0 0.0 0.0 0.8 3
particle smoke ~ ~0.5 ~ 0.05 0.05 0.05 0.01 1

particle soul_fire_flame ^ ^0.1 ^0.5 0.05 0.1 0.05 0.05 0
particle soul_fire_flame ^ ^0.1 ^-0.5 0.05 0.1 0.05 0.05 0

execute if score @s goldark.ability_timer matches 30.. run particle portal ~ ~0.5 ~ 0.0 0.0 0.0 0.8 2
execute if score @s goldark.ability_timer matches 40.. run particle end_rod ~ ~0.5 ~ 0.0 0.0 0.0 0.01 1

execute if score @s goldark.ability_timer matches 40 run playsound entity.breeze.inhale neutral @a[distance=..16] ~ ~ ~ 1 0.8


execute if score @s goldark.ability_timer matches 60 run particle gust ~ ~0.5 ~ 0.0 0.0 0.0 0.0 1
execute if score @s goldark.ability_timer matches 60 run playsound entity.wither.death neutral @a[distance=..16] ~ ~ ~ 0.5 0.5
execute if score @s goldark.ability_timer matches 60 run playsound entity.breeze.wind_burst neutral @a[distance=..16] ~ ~ ~ 1 0.8

execute if score @s goldark.ability_timer matches 60 run function goldark:items/speed_feather
kill @s[scores={ goldark.ability_timer=60.. }]