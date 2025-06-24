## * * * * * * * * * * * * * * ##
## * AydenTFoxx @ 2025-06-16 * ##
## * * * * * * * * * * * * * * ##


## DEATH

# Set flag (is_dead)
scoreboard players reset @s[tag=!goldark.is_dead] goldark.ambience
tag @s[tag=!goldark.is_dead] add goldark.is_dead

# Display death animation
particle soul_fire_flame ~ ~0.5 ~ 0.1 0.1 0.1 0.01 2
particle ash ~ ~0.5 ~ 0.1 0.1 0.1 0.01 5
execute if entity @s[scores={ goldark.ambience=30.. }] run particle explosion ~ ~ ~ 0.0 0.0 0.0 1 1

# Play death sound
execute unless score @s goldark.ambience matches 1.. run playsound entity.blaze.death hostile @a[distance=..16] ~ ~ ~ 1 0.4

# Remove self
kill @s[tag=goldark.is_dead, scores={ goldark.ambience=30.. }]