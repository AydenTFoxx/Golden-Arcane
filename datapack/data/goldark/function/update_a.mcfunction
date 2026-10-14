## * AydenTFoxx @ 2025-06-18 .. 2025-07-16
## *
## * Updates all features of the datapack at a custom rate.

#? Tick Rate: 2:1
#? Step: 1


##? EFFECT

## Holy Sickness
execute as @e[type=!#goldark:magic_immune, scores={ goldark.effect_timer.holy_sickness=1.. }] at @s run function goldark:effect/holy_sickness/tick

## Holy Numbness
execute as @e[type=!#goldark:magic_immune, scores={ goldark.effect_timer.holy_numbness=1.. }] at @s run function goldark:effect/holy_numbness/tick

## Luminance
execute as @a[tag=goldark.effect.luminance] at @s run function goldark:effect/luminance

## Purity
execute as @a[tag=goldark.effect.purity] at @s run function goldark:effect/purity

## Silence (Revoke)
execute as @e[type=!#goldark:technical, tag=goldark.is_silenced] at @s unless entity @n[type=marker, tag=goldark.entity.spell_silence, distance=..16] run function goldark:spell/silence/utils/toggle_silence


##? ENTITY

## Scarecrow
execute as @e[type=item_display, tag=goldark.entity.scarecrow] at @s run function goldark:entity/scarecrow/update

# Scarebow
execute as @e[type=item_display, tag=goldark.entity.scarebow] at @s run function goldark:entity/scarebow/update

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


##? THUNDER EGG

# Detect held Thunder Egg
execute as @a[tag=!goldark.temp.held_thunder_egg] if items entity @s weapon.* egg[custom_data~{ goldark.items.thunder_egg: 1b }] run tag @s add goldark.temp.held_thunder_egg
execute as @a[tag=!goldark.temp.held_thunder_egg_strong] if items entity @s weapon.* egg[custom_data~{ goldark.items.thunder_egg_strong: 1b }] run tag @s add goldark.temp.held_thunder_egg_strong

# Remove non-Thunder egg score
scoreboard players reset @a[scores={ goldark.used_item.egg=1.. }, tag=!goldark.temp.held_thunder_egg, tag=!goldark.temp.held_thunder_egg_strong] goldark.used_item.egg


# Transform thrown egg
execute as @a[scores={ goldark.used_item.egg=1 }, tag=goldark.temp.held_thunder_egg] run scoreboard players add @s goldark.used_item.egg 1
execute as @a[scores={ goldark.used_item.egg=1.. }, tag=goldark.temp.held_thunder_egg_strong] run scoreboard players add @s goldark.used_item.egg 2

execute as @a[scores={ goldark.used_item.egg=1.. }] at @s positioned ~ ~1 ~ run function goldark:spell/thunder_egg/init_projectile

# Remove Egg tag
execute as @a[tag=goldark.temp.held_thunder_egg] unless items entity @s weapon.* egg[custom_data~{ goldark.items.thunder_egg: 1b }] run tag @s remove goldark.temp.held_thunder_egg
execute as @a[tag=goldark.temp.held_thunder_egg_strong] unless items entity @s weapon.* egg[custom_data~{ goldark.items.thunder_egg_strong: 1b }] run tag @s remove goldark.temp.held_thunder_egg_strong


# Tick Dummies
execute as @e[type=marker, tag=goldark.dummy_magic.thunder_egg] at @s run function goldark:spell/thunder_egg/tick_projectile
execute as @e[type=marker, tag=goldark.dummy_spell.thunder_egg] at @s run function goldark:spell/thunder_egg/tick_storm