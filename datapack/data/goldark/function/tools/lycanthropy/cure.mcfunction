## * Cures Lycanthropy from the calling entity.
## *
## * Last modified: January 28th, 2025 (AydenTFoxx)


# You be no Woof, exit.
execute unless entity @s[tag=goldark.is_werewoof] run return run tellraw @s { "text": "You are not a Werewoof.", "color": "red" }


# Revert from potential transformation
execute if entity @s[tag=goldark.path_transformed] run function goldark:path/werewoof/utils/revert

# Display audiovisual feedback
particle end_rod ~ ~0.5 ~ .1 .2 .1 0.1 24
playsound entity.zombie_villager.converted neutral @a[distance=..16] ~ ~ ~ 1 0.8

# Apply effects
effect give @s weakness 12 0 false
effect give @s glowing 7 0 false


# Revoke Werewoof advancements
advancement revoke @s[type=player] from goldark:path/werewoof/root

# Reset Path Level
scoreboard players reset @s goldark.path_level.werewoof


# Remove Werewoof perk
execute if entity @s[tag=goldark.perk.werewoof] run function goldark:perk/werewoof

# Remove tag, no longer a woof
tag @s[tag=goldark.has_path, tag=!goldark.is_vempyre] remove goldark.has_path

tag @s remove goldark.is_werewoof