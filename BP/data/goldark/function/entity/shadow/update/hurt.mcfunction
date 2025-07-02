## * AydenTFoxx @ 2025-06-16
## * 
## * Displays a hurt animation, removing health and briefly making the Shadow invulnerable.


## HURT

# Reset values
scoreboard players reset @s[tag=!goldark.is_hurt] goldark.ambience
data remove entity @s[tag=!goldark.is_hurt] attack

# Remove health
scoreboard players remove @s[tag=!goldark.is_hurt] goldark.health 1

# Set flag (is_hurt)
tag @s[tag=!goldark.is_hurt] add goldark.is_hurt


# Move backwards
execute if entity @s[scores={ goldark.ambience=1 }] facing entity @p[distance=..128] feet run tp @s ^ ^0.1 ^-0.3

# Display hurt feedback
particle crit ~ ~ ~ 0.1 0.1 0.1 0.01 8
execute unless score @s goldark.ambience matches 1.. run playsound entity.breeze.hurt hostile @a[distance=..16] ~ ~ ~ 1 0.5

# Remove flag (is_hurt)
tag @s[scores={ goldark.ambience=5.. }] remove goldark.is_hurt