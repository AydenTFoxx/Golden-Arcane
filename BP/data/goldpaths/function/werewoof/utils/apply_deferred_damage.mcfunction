## * AydenTFoxx @ 2025-07-05
## * 
## * Applies damage to the player if the Wolf's health was lower than theirs before de-transforming.


## Apply default damage (8) if Wolf was killed
execute unless function goldpaths:__utils/is_same_guid run return run damage @s 8 goldpaths:deferred


# Get Wolf health
execute store result score @s goldark.dummy run data get entity @n[type=wolf, tag=goldpaths.morph_werewoof, distance=..2] Health

# Get player health
scoreboard players operation @s goldark.health = @s goldark.health_player


# Subtract values, add score to Wolf data
execute store result entity @n[type=wolf, tag=goldpaths.morph_werewoof, distance=..2] data.goldark_health int 1.0 run scoreboard players operation @s goldark.health -= @s goldark.dummy

# Take health from player, if Wolf's was lower
execute if score @s goldark.health matches 1.. run function goldpaths:__utils/apply_damage with entity @n[type=wolf, tag=goldpaths.morph_werewoof, distance=..2] data


# Reset scores
scoreboard players reset @s goldark.health
scoreboard players reset @s goldark.dummy