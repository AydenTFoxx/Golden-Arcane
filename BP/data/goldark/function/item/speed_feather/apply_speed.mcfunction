## * AydenTFoxx @ 2025-06-23* .. 2025-07-08
## * 
## * Moves the user forward at great speeds, at the cost of quick durability drain.


# Revoke trigger
advancement revoke @s only goldark:use_item/speed_feather

# Ignore if on cooldown
execute if entity @s[tag=goldark.magic_sickness] run return fail


# Set cooldown
scoreboard players set @s goldark.ability_timer 1

tag @s add goldark.magic_sickness


# Move forwards
execute if block ^ ^0.2 ^0.75 #air run tp @s ^ ^0.2 ^0.75
execute if items entity @s weapon.mainhand feather[custom_data={ goldark: { items: { speed_feather: true } } }] if items entity @s weapon.offhand feather[custom_data={ goldark: { items: { speed_feather: true } } }] \
        if block ^ ^0.25 ^1.5 #air run tp @s ^ ^0.25 ^1.5

# Apply effects
effect give @s levitation 1 0 true
effect give @s slow_falling 1 0 true


# Display teleport particles
particle portal ~ ~1 ~ 0.01 0.5 0.01 0.5 8
particle poof ~ ~1 ~ 0.15 0.1 0.15 0.01 8

# Play use sound
playsound entity.breeze.slide player @a[distance=..16] ~ ~ ~ 0.8 1.2


# Damage item
execute if items entity @s[gamemode=!creative] weapon.mainhand feather[custom_data={ goldark: { items: { speed_feather: true } } }] run function goldark:item/__utils/damage_item { slot: "weapon.mainhand", max_damage: 120 }
execute if items entity @s[gamemode=!creative] weapon.offhand feather[custom_data={ goldark: { items: { speed_feather: true } } }] run function goldark:item/__utils/damage_item { slot: "weapon.offhand", max_damage: 120 }