## * AydenTFoxx @ 2025-06-18 .. 2025-07-16
## * 
## * Updates all features of the datapack at a custom rate.

#? Tick Rate: 2:1
#? Step: 1


##? EFFECT

## Luminance
execute as @a[tag=goldark.effect.luminance] at @s run function goldark:effect/luminance

## Purity
execute as @a[tag=goldark.effect.purity] at @s run function goldark:effect/purity

## Silence (Revoke)
execute as @e[type=!#goldark:technical, tag=goldark.is_silenced] at @s unless entity @n[type=marker, tag=goldark.entity.spell_silence, distance=..16] run function goldark:spell/silence/utils/toggle_silence


##? ENTITY

## Luminance Wisp
execute as @e[type=marker, tag=goldark.entity.luminance_wisp] at @s run function goldark:entity/luminance_wisp/update

## Blood Wisp
execute as @e[type=marker, tag=goldark.entity.blood_wisp] at @s run function goldark:entity/blood_wisp/update

## Light Bolt
execute as @e[type=marker, tag=goldark.entity.light_bolt] at @s run function goldark:entity/light_bolt/update

## Spell Catalyst
execute as @e[type=marker, tag=goldark.entity.spell_catalyst] at @s run function goldark:entity/spell_catalyst/update

## Spell Essence
execute as @e[type=marker, tag=goldark.entity.spell_essence] at @s unless entity @n[type=#goldark:technical, tag=goldark.is_spell, tag=!goldark.is_essence, distance=..1] run function goldark:entity/spell_essence/destroy
execute as @e[type=marker, tag=goldark.entity.spell_essence] at @s at @n[type=#goldark:technical, tag=goldark.is_spell, tag=!goldark.is_essence, distance=..1] run function goldark:entity/spell_essence/new