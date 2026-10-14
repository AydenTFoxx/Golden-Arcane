## * Module Manager: Arcane PATHS
## * Paths of magic which grant special abilities as well as unique spells to its users.
## *
## * Last modified: January 26th, 2025 (AydenTFoxx)


# Store current time of day
execute store result score #goldark_time_day goldark.dummy run time query day

# Update stored Moon phase
execute if score #goldark_time_day goldark.dummy matches 12600 store result score #goldark_moon_phase goldark.dummy run time query day
execute if score #goldark_time_day goldark.dummy matches 12600 run scoreboard players operation #goldark_moon_phase goldark.dummy %= #goldark_moon_check goldark.dummy

execute if score #goldark_time_day goldark.dummy matches 0 store result score #goldark_moon_phase goldark.dummy run time query day
execute if score #goldark_time_day goldark.dummy matches 0 run scoreboard players operation #goldark_moon_phase goldark.dummy %= #goldark_moon_check goldark.dummy


## WEREWOOF

# Run Werewoof behavior & traits
execute as @a[tag=goldark.is_werewoof, tag=!goldark.effect.purity] at @s run function goldark:path/werewoof/update_player
execute as @e[type=wolf, tag=goldark.morph_werewoof] at @s run function goldark:path/werewoof/update_wolf


## VEMPYRE

# Run Vempyre behavior & traits
execute as @a[tag=goldark.is_vempyre, tag=!goldark.effect.purity] at @s run function goldark:path/vempyre/update

# Prevent player-less Bat morphs
execute as @e[type=bat, tag=goldark.morph_vempyre] at @s unless entity @a[tag=goldark.is_vempyre, tag=goldark.path_transformed, tag=!goldark.effect.purity, distance=..4] run kill @s

# Update bat decoys
execute as @e[type=bat, tag=goldark.vempyre.bat_decoy] at @s run function goldark:path/vempyre/decoy/update