## * AydenTFoxx @ 2025-06-18 .. 2025-07-01
## * 
## * Updates all features of the datapack at a custom rate.

#? Tick Rate: 2:1
#? Step: 2


##? COOLDOWN

# Remove time
scoreboard players remove @a[scores={ goldark.ability_timer=1.. }] goldark.ability_timer 1

# Reset cooldown
tag @a[tag=goldark.magic_sickness, scores={ goldark.ability_timer=..0 }] remove goldark.magic_sickness

scoreboard players reset @a[scores={ goldark.ability_timer=..0 }] goldark.ability_timer


##? MANA

# Regenerate Mana
execute as @a[scores={ goldark.mana=..19 }] unless score @s goldark.ability_timer matches 1.. run function goldark:spell/_utils/update_mana


##? SPELL

## Deflect
execute as @e[type=marker, tag=goldark.entity.spell_deflect] at @s if loaded ~ ~ ~ run function goldark:spell/deflect/update

## Silence
execute as @e[type=marker, tag=goldark.entity.spell_silence] at @s if loaded ~ ~ ~ run function goldark:spell/silence/update

## Smite
execute as @e[type=marker, tag=goldark.entity.spell_smite] at @s if loaded ~ ~ ~ run function goldark:spell/smite/update

## Ward (Magic Lock)
execute as @e[type=marker, tag=goldark.entity.spell_lock] at @s if loaded ~ ~ ~ run function goldark:spell/ward/update

## Warp (Warp Gate)
execute as @e[type=interaction, tag=goldark.entity.spell_gate] at @s if loaded ~ ~ ~ run function goldark:spell/warp/update