## * AydenTFoxx @ 2025-07-10
## * 
## * Updates the player's combo abilities when they have at least one combo score.


##? COMBO / KILL STREAK

# Tick combo timer
scoreboard players remove @s[scores={ goldpaths.combo_timer=1.. }] goldpaths.combo_timer 1
scoreboard players reset @s[scores={ goldpaths.combo_timer=..0 }] goldpaths.combo_timer

# Reset combo
execute if score @s goldpaths.combo matches 1.. unless score @s goldpaths.combo_timer matches 1.. run scoreboard players reset @s goldpaths.combo


## Abilities:

# Lunge
execute if entity @s[scores={ goldpaths.combo=10..29 }] if predicate goldark:input/sprint if predicate goldark:input/sneak run return run function goldpaths:werewoof/ability/lunge
execute if entity @s[tag=goldpaths.werewoof.lunge] run return run function goldpaths:werewoof/ability/lunge

# Summon Wolves
execute if entity @s[scores={ goldpaths.combo=30..59 }] if predicate goldark:input/sprint if predicate goldark:input/sneak run return run function goldpaths:werewoof/ability/summon_wolves

# Banish
execute if entity @s[scores={ goldpaths.combo=50.. }] if predicate goldark:input/sprint if predicate goldark:input/sneak run return run function goldpaths:werewoof/ability/prepare_banish
execute if entity @s[tag=goldpaths.werewoof.banish, predicate=!goldark:input/sprint, predicate=!goldark:input/sneak] positioned ^ ^ ^4 at @n[type=!#goldark:immune_to_banishment, predicate=goldark:entity/is_hostile, distance=..4] run function goldark:spell/banish/new

execute if entity @s[tag=goldpaths.werewoof.banish, predicate=!goldark:input/sprint, predicate=!goldark:input/sneak] run scoreboard players reset @s goldpaths.combo
execute if entity @s[tag=goldpaths.werewoof.banish, predicate=!goldark:input/sprint, predicate=!goldark:input/sneak] run return run tag @s remove goldpaths.werewoof.banish