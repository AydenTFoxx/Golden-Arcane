## * AydenTFoxx @ 2025-07-10
## *
## * Grants a burst of raw strength to the player, while also weakening nearby foes.


## Initialize ability
execute unless entity @s[tag=goldark.werewoof.lunge] run scoreboard players reset @s goldark.combo
execute unless entity @s[tag=goldark.werewoof.lunge] run scoreboard players set @s goldark.ability_timer 35
execute unless entity @s[tag=goldark.werewoof.lunge] run tag @s add goldark.werewoof.lunge


# Grant effects
effect give @s jump_boost 1 1 true
effect give @s speed 1 3
effect give @s strength 2 5

# Apply debuffs
effect give @e[type=!#goldark:technical, type=!#goldark:player_allies, distance=..4] weakness 12 1
effect give @e[type=!#goldark:technical, type=!#goldark:player_allies, distance=..4] slowness 12 1


# Harm close enemies
execute as @e[type=!#goldark:technical, type=!#goldark:player_allies, distance=..2] run damage @s 4 player_attack by @p[tag=goldark.is_werewoof, distance=..1]


# Reset ability
execute unless score @s goldark.ability_timer matches 1.. run return run tag @s remove goldark.werewoof.lunge