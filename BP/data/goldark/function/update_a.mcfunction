## * AydenTFoxx @ 2025-06-18 .. 2025-06-23w
## * 
## * ...
## * 
##? Tick Rate:  1:1


##? COOLDOWN
scoreboard players remove @a[scores={ goldark.ability_timer=1.. }, tag=!goldark.keep_cooldown] goldark.ability_timer 1

tag @a[tag=goldark.magic_sickness, scores={ goldark.ability_timer=0 }] remove goldark.magic_sickness
scoreboard players reset @a[scores={ goldark.ability_timer=0 }] goldark.ability_timer


##? EFFECT

## Luminance
execute as @a[tag=goldark.effect.luminance] at @s run function goldark:effect/luminance

## Silence (Revoke)
execute as @e[type=!#goldark:technical, tag=goldark.is_silenced] at @s if loaded ~ ~ ~ unless entity @n[type=marker, tag=goldark.entity.spell_silence, distance=..16] run function goldark:entity/_spell/silence/utils/toggle_silence


##? ENTITY

## Shadow [Wisp]
execute as @e[type=interaction, tag=goldark.entity.shadow] at @s if loaded ~ ~ ~ run function goldark:entity/shadow/update
execute as @e[type=marker, tag=goldark.spawn_egg.shadow] at @s if loaded ~ ~ ~ run function goldark:entity/shadow/new_egg

# Rituals
execute as @e[type=item, nbt={ Item: { id: "minecraft:coal" } }] at @s if block ~ ~ ~ #candles[lit=true] if block ~ ~-1 ~ obsidian run function goldark:entity/shadow/utils/ritual_summon
execute as @e[type=item, nbt={ Item: { id: "minecraft:snowball" } }] at @s if block ~ ~ ~ #candles[lit=true] if block ~ ~-1 ~ gold_block run function goldark:entity/shadow/utils/ritual_banish


## Warp Gate
execute as @e[type=interaction, tag=goldark.entity.spell_gate] at @s if loaded ~ ~ ~ run function goldark:entity/_spell/warp_gate/update

# Activation
execute as @e[type=item, nbt={ Item: { id: "minecraft:echo_shard" } }] at @s if block ~ ~ ~ soul_fire run function goldark:entity/_spell/warp_gate/new_item
execute as @e[type=item, nbt={ Item: { id: "minecraft:popped_chorus_fruit" } }] at @s if block ~ ~ ~ soul_fire run function goldark:entity/_spell/warp_gate/new_item


## Arcane Lock
execute as @e[type=marker, tag=goldark.entity.spell_lock] at @s if loaded ~ ~ ~ run function goldark:entity/_spell/magic_lock/update

# Activation
execute as @e[type=item, nbt={ Item: { id: "minecraft:redstone" } }] at @s if block ~ ~ ~ #candles[lit=true] align xyz positioned ~0.5 ~0.5 ~0.5 run function goldark:entity/_spell/magic_lock/new_ritual


## Silence
execute as @e[type=marker, tag=goldark.entity.spell_silence] at @s if loaded ~ ~ ~ run function goldark:entity/_spell/silence/update

# Activation
execute as @e[type=item, nbt={ Item: { id: "minecraft:echo_shard" } }] at @s if block ~ ~ ~ #candles[lit=true] if block ~ ~-1 ~ #wool align xyz positioned ~0.5 ~0.5 ~0.5 run function goldark:entity/_spell/silence/new_ritual


##? ITEMS

## Levitation Feather (Spawning Ritual)
execute as @e[type=item, nbt={ Item: { id: "minecraft:feather" } }] at @s if block ~ ~ ~ #candles[lit=true] if block ~ ~-1 ~ glowstone run function goldark:items/levitation_feather/ritual_imbue

## Speed Feather (Spawning Ritual)
execute as @e[type=item, nbt={ Item: { id: "minecraft:shears", components: { "minecraft:custom_data": { goldark: { items: { levitation_feather: true } } } } } }] at @s if block ~ ~ ~ #candles[lit=true] if block ~ ~-1 ~ obsidian run function goldark:items/speed_feather/ritual_imbue