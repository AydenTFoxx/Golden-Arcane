## * AydenTFoxx @ 2025-07-05 .. 2025-07-10
## *
## * Targets the closest hostile mob to the Wolf form.


## Ignore and enter Rage Mode
execute if score @s[tag=!goldark.rage_mode] goldark.ability_timer matches 300.. run return run function goldark:path/werewoof/utils/wolf/rage_mode

## Ignore and tick timer if already angry / targeting a mob
execute unless data entity @s[tag=!goldark.rage_mode] { anger_end_time: 0 } run return run scoreboard players add @s goldark.ability_timer 1


# Set target mob from UUID
data modify entity @s[tag=goldark.is_morph] angry_at set from entity @n[type=!#goldark:technical, type=!wolf, predicate=goldark:entity/is_hostile, distance=..8] UUID
data modify entity @s[tag=!goldark.is_morph] angry_at set from entity @n[type=!#goldark:technical, type=!wolf, predicate=goldark:entity/is_hostile, distance=..16] UUID

# Set anger time
data modify entity @s anger_end_time set value 160


# Tick rage time
scoreboard players remove @s[tag=goldark.rage_mode] goldark.ability_timer 1

# Remove tag
tag @s[scores={ goldark.ability_timer=..0 }] remove goldark.rage_mode

# Reset rage timer
scoreboard players reset @s[scores={ goldark.ability_timer=..0 }] goldark.ability_timer