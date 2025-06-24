advancement revoke @s only goldark:use_item/levitation_feather

execute if entity @s[tag=goldark.magic_sickness] run return fail


scoreboard players set @s goldark.ability_timer 20
tag @s add goldark.magic_sickness

effect give @s levitation 1 4 true
execute if items entity @s weapon.mainhand shears[custom_data={ goldark: { items: { levitation_feather: true } } }] if items entity @s weapon.offhand shears[custom_data={ goldark: { items: { levitation_feather: true } } }] \
        run effect give @s levitation 1 9 true

effect give @s slow_falling 2 0 true

particle dust_plume ~ ~ ~ 0.01 0.1 0.01 0.5 8
particle cloud ~ ~0.5 ~ 0.15 0.1 0.15 0.01 12

playsound entity.breeze.whirl player @a[distance=..16] ~ ~ ~ 0.8 1.2

execute if items entity @s[gamemode=!creative] weapon.mainhand shears[custom_data={ goldark: { items: { levitation_feather: true } } }] run function goldark:items/__utils/damage_item { slot: "mainhand" }
execute if items entity @s[gamemode=!creative] weapon.offhand shears[custom_data={ goldark: { items: { levitation_feather: true } } }] run function goldark:items/__utils/damage_item { slot: "offhand" }