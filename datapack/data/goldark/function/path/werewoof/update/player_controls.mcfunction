## * AydenTFoxx @ 2025-07-10
## *
## * Updates the player's combo abilities when they have at least one combo score.


##? COMBO / KILL STREAK

# Tick combo timer
scoreboard players remove @s[scores={ goldark.combo_timer=1.. }] goldark.combo_timer 1
scoreboard players reset @s[scores={ goldark.combo_timer=..0 }] goldark.combo_timer

# Reset combo
execute if score @s goldark.combo matches 1.. unless score @s goldark.combo_timer matches 1.. run scoreboard players reset @s goldark.combo


## Abilities:

# Lunge
execute if entity @s[scores={ goldark.combo=10..29 }] if predicate goldark:input/sprint if predicate goldark:input/sneak run return run function goldark:path/werewoof/ability/lunge
execute if entity @s[tag=goldark.werewoof.lunge] run return run function goldark:path/werewoof/ability/lunge

# Summon Wolves
execute if entity @s[scores={ goldark.combo=30..59 }] if predicate goldark:input/sprint if predicate goldark:input/sneak run return run function goldark:path/werewoof/ability/summon_wolves

# Banish
execute if entity @s[scores={ goldark.combo=50.. }] if predicate goldark:input/sprint if predicate goldark:input/sneak run return run function goldark:path/werewoof/ability/prepare_banish
execute if entity @s[tag=goldark.werewoof.banish, predicate=!goldark:input/sprint, predicate=!goldark:input/sneak] run return run function goldark:path/werewoof/ability/release_banish