## * AydenTFoxx @ 2025-04-01 .. 2025-06-23
## * 
## * ...

## ? On Use: potion_luminance
## ? Grants Effect: Luminance


## INIT

# Reset trigger
advancement revoke @s only goldark:use_item/potion_luminance


# Display visual feedback
execute unless entity @s[tag=goldark.effect.luminance] run particle end_rod ~ ~0.5 ~ 0.1 0.2 0.1 0.05 12

# Add tag
execute unless entity @s[tag=goldark.effect.luminance] run tag @s add goldark.effect.luminance

# Set duration
execute unless entity @s[tag=goldark.effect.luminance] run scoreboard players set @s goldark.ability_clock 3600


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