## * AydenTFoxx @ 2025-04-01 .. 2025-04-04
## * 
## * ...

## ? On Use: elixir_dandelion
## ? Grants Effect: Luminance


## INIT

# Reset trigger
advancement revoke @s[advancements={ goldark:use_item/alchemy/elixir_dandelion=true }] only goldark:use_item/alchemy/elixir_dandelion


# Display visual feedback
execute unless score @s goldark.ability_timer matches 1.. run particle end_rod ~ ~0.5 ~ 0.1 0.2 0.1 0.05 12

# Add tag
execute unless score @s goldark.ability_timer matches 1.. run tag @s add goldark.effect.luminance


## TICK

# Tick timer
scoreboard players add @s goldark.ability_timer 1


# Harm undead creatures
execute as @e[type=#undead, distance=1..3] run damage @s 2 in_fire by @p[distance=..1]

# Light surroundings
execute if block ~ ~1 ~ #air run function goldark:alchemy/entity/luminance_wisp/new


## END

# Remove tag
execute if score @s goldark.ability_timer matches 200.. run tag @s remove goldark.effect.luminance

# Reset score
scoreboard players reset @s[scores={ goldark.ability_timer=200.. }] goldark.ability_timer