## * AydenTFoxx @ 2025-07-05 .. 2025-07-10
## * 
## * Updates the Werewoof Wolf's behavior and abilities.


## Remove if matching player is not nearby
execute if entity @s[tag=goldpaths.is_morph] unless function goldpaths:__utils/is_same_guid run return run kill @s


##? TRAITS & ACTIONS

# Harm by Iron
execute if block ~ ~ ~ #goldpaths:hurts_werewoof run damage @s 2 on_fire
execute if block ~ ~-0.1 ~ #goldpaths:hurts_werewoof run damage @s 1 on_fire

# Attack nearby foes
execute if entity @n[type=!#goldark:technical, predicate=goldark:entity/is_hostile, distance=..16] run function goldpaths:werewoof/utils/wolf/target_hostile


##? RAGE MODE

# Remove rage timer
execute unless entity @n[type=!#goldark:technical, predicate=goldark:entity/is_hostile, distance=..16] if score @s goldark.ability_timer matches 1.. run scoreboard players remove @s goldark.ability_timer 1
execute unless entity @n[type=!#goldark:technical, predicate=goldark:entity/is_hostile, distance=..16] if score @s goldark.ability_timer matches ..0 run tag @s remove goldpaths.rage_mode
execute unless entity @n[type=!#goldark:technical, predicate=goldark:entity/is_hostile, distance=..16] if score @s goldark.ability_timer matches ..0 run scoreboard players reset @s goldark.ambience
execute unless entity @n[type=!#goldark:technical, predicate=goldark:entity/is_hostile, distance=..16] if score @s goldark.ability_timer matches ..0 run scoreboard players reset @s goldark.ability_timer


# Tick ambience timer
scoreboard players add @s[tag=goldpaths.rage_mode] goldark.ambience 1

# Play angry angry sound
execute if score @s[tag=goldpaths.is_morph] goldark.ambience matches 40 run playsound entity.wolf.growl player @a[distance=..16] ~ ~ ~ 1 0.85

# Reset ambience timer
scoreboard players reset @s[tag=goldpaths.rage_mode, scores={ goldark.ambience=80.. }] goldark.ambience


## Remove self if non-Morph
execute unless score @s[tag=!goldpaths.is_morph] goldark.ability_timer matches 1.. run data merge entity @s { Health: 0.0f, DeathTime: 20s }