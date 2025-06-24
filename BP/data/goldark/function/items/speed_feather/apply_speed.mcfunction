advancement revoke @s only goldark:use_item/speed_feather

execute if entity @s[tag=goldark.magic_sickness] run return fail


scoreboard players set @s goldark.ability_timer 2
tag @s add goldark.magic_sickness

execute if block ^ ^0.2 ^0.75 #air run tp @s ^ ^0.2 ^0.75
execute if items entity @s weapon.mainhand shears[custom_data={ goldark: { items: { speed_feather: true } } }] if items entity @s weapon.offhand shears[custom_data={ goldark: { items: { speed_feather: true } } }] \
        if block ^ ^0.25 ^1.5 #air run tp @s ^ ^0.25 ^1.5

effect give @s levitation 1 0 true
effect give @s slow_falling 1 0 true

particle portal ~ ~1 ~ 0.01 0.5 0.01 0.5 8
particle poof ~ ~1 ~ 0.15 0.1 0.15 0.01 8

playsound entity.breeze.slide player @a[distance=..16] ~ ~ ~ 0.8 1.2

execute if items entity @s[gamemode=!creative] weapon.mainhand shears[custom_data={ goldark: { items: { speed_feather: true } } }] run function goldark:items/__utils/damage_item { slot: "mainhand" }
execute if items entity @s[gamemode=!creative] weapon.offhand shears[custom_data={ goldark: { items: { speed_feather: true } } }] run function goldark:items/__utils/damage_item { slot: "offhand" }