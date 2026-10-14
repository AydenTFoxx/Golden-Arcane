## * AydenTFoxx @ 2025-07-02
## *
## * Updates all features of the datapack at a custom rate.

#? Tick Rate: 4:1
#? Step: 3


##? MANA

# Regenerate Mana
execute as @a[scores={ goldark.mana=..19 }] unless score @s goldark.artifact_cooldown matches 1.. run function goldark:spell/_utils/update_mana


##? OTHER

# Store current time of day
execute store result score #goldark_time_day goldark.dummy run time query day

# Update stored Moon phase
execute if score #goldark_time_day goldark.dummy matches 12600 store result score #goldark_moon_phase goldark.dummy run time query day
execute if score #goldark_time_day goldark.dummy matches 12600 run scoreboard players operation #goldark_moon_phase goldark.dummy %= #goldark_moon_check goldark.dummy

execute if score #goldark_time_day goldark.dummy matches 0 store result score #goldark_moon_phase goldark.dummy run time query day
execute if score #goldark_time_day goldark.dummy matches 0 run scoreboard players operation #goldark_moon_phase goldark.dummy %= #goldark_moon_check goldark.dummy


## Magic Cauldron
execute as @e[type=block_display, tag=goldark.block.cauldron] at @s align y positioned ~0.5 ~-0.5 ~0.5 run function goldark:spellcraft/cauldron/update

## Essence of Purity
execute as @e[type=marker, tag=goldark.dummy_magic.essence_white] at @s run function goldark:spellcraft/essences/white/tick