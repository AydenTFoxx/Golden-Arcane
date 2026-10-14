## * Module Manager: Arcane PATHS
## * Paths of magic which grant special abilities as well as unique spells to its users.
## *
## * Last modified: January 26th, 2025 (AydenTFoxx)


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