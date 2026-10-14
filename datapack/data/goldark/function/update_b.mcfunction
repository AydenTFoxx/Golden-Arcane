## * AydenTFoxx @ 2025-06-18 .. 2025-07-02
## *
## * Updates all features of the datapack at a custom rate.

#? Tick Rate: 2:1
#? Step: 2


##? COOLDOWN

# Remove time
scoreboard players remove @a[scores={ goldark.artifact_cooldown=1.. }] goldark.artifact_cooldown 1

# Reset cooldown
tag @a[tag=goldark.magic_sickness, scores={ goldark.artifact_cooldown=..0 }] remove goldark.magic_sickness

scoreboard players reset @a[scores={ goldark.artifact_cooldown=..0 }] goldark.artifact_cooldown


##? SPELL

## Banishment
execute as @e[type=marker, tag=goldark.entity.spell_banish] at @s run function goldark:spell/banish/update

## Deflect
execute as @e[type=marker, tag=goldark.entity.spell_deflect] at @s run function goldark:spell/deflect/update

## Silence
execute as @e[type=marker, tag=goldark.entity.spell_silence] at @s run function goldark:spell/silence/update

## Smite
execute as @e[type=marker, tag=goldark.entity.spell_smite] at @s run function goldark:spell/smite/update

## Ward (Magic Lock)
execute as @e[type=marker, tag=goldark.entity.spell_lock] at @s run function goldark:spell/ward/update

## Warp (Warp Gate)
execute as @e[type=interaction, tag=goldark.entity.spell_gate] at @s run function goldark:spell/warp/update

## Judgement
execute as @e[type=marker, tag=goldark.dummy_magic.judgement_trigger] at @s run function goldark:spell/judgement/tick_trigger
execute as @e[type=marker, tag=goldark.dummy_spell.judgement] at @s run function goldark:spell/judgement/tick_aura


##? RITUAL

## Lycanthropy
execute as @e[type=marker, tag=goldark.dummy_ritual.lycanthropy] at @s run function goldark:ritual/lycanthropy/tick

## Lycanthropy Reversal
execute as @e[type=marker, tag=goldark.dummy_ritual.lycanthropy_revert] at @s run function goldark:ritual/lycanthropy_revert/tick