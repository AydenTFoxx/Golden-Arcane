## * AydenTFoxx @ 2025-07-05 .. 2025-07-10
## *
## * Updates the Werewoof Wolf's behavior and abilities.


## Remove if matching player is not nearby
execute if entity @s[tag=goldark.is_morph] unless function goldark:tools/is_same_guid run return run kill @s


##? TRAITS & ACTIONS

# Tick sickness
function goldark:path/werewoof/sickness

# Attack nearby foes
execute if entity @n[type=!#goldark:technical, predicate=goldark:entity/is_hostile, distance=..16] run function goldark:path/werewoof/utils/wolf/target_hostile


##? RAGE MODE

# Remove rage timer
execute unless entity @n[type=!#goldark:technical, predicate=goldark:entity/is_hostile, distance=..16] if score @s goldark.ability_timer matches 1.. run scoreboard players remove @s goldark.ability_timer 1
execute unless entity @n[type=!#goldark:technical, predicate=goldark:entity/is_hostile, distance=..16] if score @s goldark.ability_timer matches ..0 run tag @s remove goldark.rage_mode
execute unless entity @n[type=!#goldark:technical, predicate=goldark:entity/is_hostile, distance=..16] if score @s goldark.ability_timer matches ..0 run scoreboard players reset @s goldark.ambience
execute unless entity @n[type=!#goldark:technical, predicate=goldark:entity/is_hostile, distance=..16] if score @s goldark.ability_timer matches ..0 run scoreboard players reset @s goldark.ability_timer


# Tick ambience timer
scoreboard players add @s[tag=goldark.rage_mode] goldark.ambience 1

# Play angry angry sound
execute if score @s[tag=goldark.is_morph] goldark.ambience matches 40 run playsound entity.wolf.growl player @a[distance=..16] ~ ~ ~ 1 0.85

# Reset ambience timer
scoreboard players reset @s[tag=goldark.rage_mode, scores={ goldark.ambience=80.. }] goldark.ambience


## Remove self if non-Morph
execute unless score @s[tag=!goldark.is_morph] goldark.ability_timer matches 1.. run data merge entity @s { Health: 0.0f, DeathTime: 20s }