## * AydenTFoxx @ 2025-06-18 .. 2025-06-25
## * 
## * Updates all custom features of the datapack at a custom rate.

#? Tick Rate: 2:1


##? EFFECT

## Silence (Revoke)
execute as @e[type=!#goldark:technical, tag=goldark.is_silenced] at @s if loaded ~ ~ ~ unless entity @n[type=marker, tag=goldark.entity.spell_silence, distance=..16] run function goldark:spell/silence/utils/toggle_silence


##? ENTITY

## Luminance Wisp
execute as @e[type=marker, tag=goldark.entity.luminance_wisp] at @s if loaded ~ ~ ~ run function goldark:entity/luminance_wisp/update

## Blood Wisp
execute as @e[type=marker, tag=goldark.entity.blood_wisp] at @s if loaded ~ ~ ~ run function goldark:entity/blood_wisp/update


##? SPELL

## Warp (Warp Gate)
execute as @e[type=interaction, tag=goldark.entity.spell_gate] at @s if loaded ~ ~ ~ run function goldark:spell/warp/update

## Silence
execute as @e[type=marker, tag=goldark.entity.spell_silence] at @s if loaded ~ ~ ~ run function goldark:spell/silence/update

execute as @e[type=item, nbt={ Item: { id: "minecraft:echo_shard" } }, tag=!goldark.item_drop] at @s if block ~ ~ ~ #candles[lit=true] align xyz positioned ~0.5 ~0.5 ~0.5 run function goldark:spell/silence/new_ritual

## Smite
execute as @e[type=marker, tag=goldark.entity.spell_smite] at @s if loaded ~ ~ ~ run function goldark:spell/smite/update

execute as @e[type=item, nbt={ Item: { id: "minecraft:quartz" } }, tag=!goldark.item_drop] at @s if block ~ ~ ~ #candles[lit=true] align xyz positioned ~0.5 ~0.5 ~0.5 run function goldark:spell/smite/new_ritual


##? ITEMS

## Levitation Feather (Spawning Ritual)
execute as @e[type=item, nbt={ Item: { id: "minecraft:feather" } }] at @s if block ~ ~ ~ #candles[lit=true] if block ~ ~-1 ~ glowstone run function goldark:item/levitation_feather/ritual_imbue

## Speed Feather (Spawning Ritual)
execute as @e[type=item, nbt={ Item: { id: "minecraft:shears", components: { "minecraft:custom_data": { goldark: { items: { levitation_feather: true } } } } } }] at @s if block ~ ~ ~ #candles[lit=true] if block ~ ~-1 ~ obsidian run function goldark:item/speed_feather/ritual_imbue