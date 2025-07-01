## * AydenTFoxx @ 2025-04-01 .. 2025-07-01
## * 
## * Grants and ticks the Luminance custom effect for players.
## * 
## * Luminance lights up terrain with Light blocks, which are removed when the player walks away.
## * Undead creatures burn as if under sunlight; Shadows run away and, if close enough, also burn like undead creatures.

#? On Use: Potion of Luminance
#? Grants Effect: Luminance


## INIT

# Reset trigger
advancement revoke @s only goldark:use_item/potion_luminance


# Display visual feedback
execute unless entity @s[tag=goldark.effect.luminance] run particle end_rod ~ ~0.5 ~ 0.1 0.2 0.1 0.05 12

# Set duration
execute unless entity @s[tag=goldark.effect.luminance] run scoreboard players set @s goldark.ability_clock 1800

# Add tag
execute unless entity @s[tag=goldark.effect.luminance] run tag @s add goldark.effect.luminance


## TICK

# Tick duration
scoreboard players remove @s goldark.ability_clock 1

# Harm undead creatures
execute as @e[type=#undead, distance=..3] run data merge entity @s { Fire: 20s }

# Harm Shadow Wisps
execute as @e[type=interaction, tag=goldark.entity.shadow, distance=..2] at @s run function goldark:entity/shadow/update/hurt_daylight

# Light surroundings
execute if block ~ ~1 ~ #air align xyz positioned ~0.5 ~1 ~0.5 run function goldark:entity/luminance_wisp/new


## END

# Remove tag
execute if score @s goldark.ability_clock matches ..0 run tag @s remove goldark.effect.luminance

# Reset score
scoreboard players reset @s[scores={ goldark.ability_clock=..0 }] goldark.ability_clock