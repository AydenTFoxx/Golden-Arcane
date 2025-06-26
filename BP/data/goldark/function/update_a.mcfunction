## * AydenTFoxx @ 2025-06-18 .. 2025-06-25
## * 
## * Updates all features of the datapack at Minecraft's ticking rate.

#? Tick Rate: 1:1


##? COOLDOWN

# Remove time
scoreboard players remove @a[scores={ goldark.ability_timer=1.. }, tag=!goldark.keep_cooldown] goldark.ability_timer 1

# Reset cooldown
tag @a[tag=goldark.magic_sickness, scores={ goldark.ability_timer=..0 }] remove goldark.magic_sickness

scoreboard players reset @a[scores={ goldark.ability_timer=..0 }] goldark.ability_timer


##? EFFECT

## Luminance
execute as @a[tag=goldark.effect.luminance] at @s run function goldark:effect/luminance


##? ENTITY

## Shadow [Wisp]
execute as @e[type=interaction, tag=goldark.entity.shadow] at @s if loaded ~ ~ ~ run function goldark:entity/shadow/update
execute as @e[type=marker, tag=goldark.spawn_egg.shadow] at @s if loaded ~ ~ ~ run function goldark:entity/shadow/new_egg

# Rituals
execute as @e[type=item, nbt={ Item: { id: "minecraft:coal" } }] at @s if block ~ ~ ~ #candles[lit=true] if block ~ ~-1 ~ obsidian run function goldark:entity/shadow/utils/ritual_summon
execute as @e[type=item, nbt={ Item: { id: "minecraft:snowball" } }] at @s if block ~ ~ ~ #candles[lit=true] if block ~ ~-1 ~ gold_block run function goldark:entity/shadow/utils/ritual_banish

## Light Bolt
execute as @e[type=interaction, tag=goldark.entity.light_bolt] at @s if loaded ~ ~ ~ run function goldark:entity/light_bolt/update


##? SPELL

## Ward (Magic Lock)
execute as @e[type=marker, tag=goldark.entity.spell_lock] at @s if loaded ~ ~ ~ run function goldark:spell/ward/update

execute as @e[type=item, nbt={ Item: { id: "minecraft:redstone" } }, tag=!goldark.item_drop] at @s if block ~ ~ ~ #candles[lit=true] align xyz positioned ~0.5 ~1 ~0.5 run function goldark:spell/ward/new_ritual