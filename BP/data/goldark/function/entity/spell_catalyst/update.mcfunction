## * AydenTFoxx @ 2025-06-27 .. 2025-07-01
## * 
## * Updates the Catalyst's behaviors according to its magic type.


##? DEFAULT

# Display particles
particle dragon_breath ~ ~0.5 ~ 0.01 0.02 0.01 0.01 1

# Tick ambience clock
scoreboard players add @s goldark.ambience 1

# Play ambient sound
execute if score @s goldark.ambience matches 10 run playsound block.beacon.ambient neutral @a[distance=..16] ~ ~ ~ 0.8 0.8

# Reset clock
scoreboard players reset @s[scores={ goldark.ambience=20.. }] goldark.ambience


##? DESPAWN

# Tick timer
scoreboard players add @s goldark.ability_timer 1


# "Break" instead of dropping
execute if score @s goldark.ability_timer matches 40.. if predicate goldark:random/10 run return run function goldark:entity/spell_catalyst/utils/destroy

# Drop & remove self
execute if score @s goldark.ability_timer matches 40.. run function goldark:entity/spell_catalyst/utils/remove


##? MAGIC TYPES

## Primordial
execute if data entity @s data.goldark.spell_catalyst.type.primordial run function goldark:entity/spell_catalyst/variant/primordial

## Divine
execute if data entity @s data.goldark.spell_catalyst.type.divine run function goldark:entity/spell_catalyst/variant/divine

## Imperial
execute if data entity @s data.goldark.spell_catalyst.type.imperial run function goldark:entity/spell_catalyst/variant/imperial

## Eldritch
execute if data entity @s data.goldark.spell_catalyst.type.eldritch run function goldark:entity/spell_catalyst/variant/eldritch

## Forbidden
execute if data entity @s data.goldark.spell_catalyst.type.forbidden run function goldark:entity/spell_catalyst/variant/forbidden

## Sacrificial
execute if data entity @s data.goldark.spell_catalyst.type.sacrificial run function goldark:entity/spell_catalyst/variant/sacrificial