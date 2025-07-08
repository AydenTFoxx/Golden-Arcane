## * AydenTFoxx @ 2025-07-05 .. 2025-07-08
## * 
## * Targets the closest hostile mob to the Wolf form.


## Ignore and enter Rage Mode
execute if score @s[tag=!goldpaths.rage_mode] goldark.ability_timer matches 300.. run return run function goldpaths:werewoof/utils/wolf/rage_mode

## Ignore and tick timer if already angry / targeting a mob
execute unless data entity @s[tag=!goldpaths.rage_mode] { AngerTime: 0 } run return run scoreboard players add @s goldark.ability_timer 1


# Set target mob from UUID
data modify entity @s AngryAt set from entity @n[type=!#goldark:technical, predicate=goldark:entity/is_hostile, distance=..8] UUID

# Set anger time
data modify entity @s AngerTime set value 160


# Tick rage time
scoreboard players remove @s[tag=goldpaths.rage_mode] goldark.ability_timer 1

# Remove tag
tag @s[scores={ goldark.ability_timer=..0 }] remove goldpaths.rage_mode

# Reset rage timer
scoreboard players reset @s[scores={ goldark.ability_timer=..0 }] goldark.ability_timer