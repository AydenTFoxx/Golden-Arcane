## * AydenTFoxx @ 2025-06-23* .. 2025-07-08
## * 
## * Ascends the user upwards, with a brief slow fall afterwards.


# Revoke trigger
advancement revoke @s only goldark:use_item/levitation_feather

# Ignore if on cooldown
execute if entity @s[tag=goldark.magic_sickness] run return fail


# Set cooldown
scoreboard players set @s goldark.ability_timer 10

tag @s add goldark.magic_sickness


# Grant levitation
effect give @s levitation 1 4 true
execute if items entity @s weapon.mainhand feather[custom_data={ goldark: { items: { levitation_feather: true } } }] if items entity @s weapon.offhand feather[custom_data={ goldark: { items: { levitation_feather: true } } }] \
        run effect give @s levitation 1 9 true

# Grant slow fall
effect give @s slow_falling 2 0 true


# Display "cloud jump" particles
particle dust_plume ~ ~ ~ 0.01 0.1 0.01 0.5 8
particle cloud ~ ~0.5 ~ 0.15 0.1 0.15 0.01 12

# Play use sound
playsound entity.breeze.whirl player @a[distance=..16] ~ ~ ~ 0.8 1.2


# Damage item
execute if items entity @s[gamemode=!creative] weapon.mainhand feather[custom_data={ goldark: { items: { levitation_feather: true } } }] run function goldark:item/__utils/damage_item { slot: "weapon.mainhand", max_damage: 120 }
execute if items entity @s[gamemode=!creative] weapon.offhand feather[custom_data={ goldark: { items: { levitation_feather: true } } }] run function goldark:item/__utils/damage_item { slot: "weapon.offhand", max_damage: 120 }