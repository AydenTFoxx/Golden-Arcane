## * AydenTFoxx @ 2025-06-26
## * 
## * Grants the user temporary immunity to being attacked by Divine spells.

#? On Use: Pact of Illusion
#? Grants Effect: Divine Immunity


## INIT

# Reset triggers
advancement revoke @s only goldark:use_item/pact_of_illusion


# Display trigger effects
execute unless entity @s[tag=goldark.effect.immunity_divine] run particle flash ~ ~1 ~ 0.1 0.2 0.1 0.05 1
execute unless entity @s[tag=goldark.effect.immunity_divine] run particle portal ~ ~1 ~ 0.01 0.2 0.01 0.8 16

execute unless entity @s[tag=goldark.effect.immunity_divine] run playsound block.portal.travel player @s ~ ~ ~ 1 0.67


# Set duration
execute unless entity @s[tag=goldark.effect.immunity_divine] run scoreboard players set @s goldark.ability_clock 650

# Add tag
execute unless entity @s[tag=goldark.effect.immunity_divine] run tag @s add goldark.effect.immunity_divine


## TICK

# Tick duration
scoreboard players remove @s goldark.ability_clock 1


# Add random debuff tag
execute unless score @s goldark.ability_timer matches 1.. if predicate goldark:random/10 run tag @s add goldark.debuff.random

# Grant random debuffs
execute if entity @s[tag=goldark.debuff.random] if predicate goldark:random/10 run effect give @s mining_fatigue 8 1
execute if entity @s[tag=goldark.debuff.random] if predicate goldark:random/10 run effect give @s weakness 8 0
execute if entity @s[tag=goldark.debuff.random] if predicate goldark:random/10 run effect give @s slowness 8 0
execute if entity @s[tag=goldark.debuff.random] if predicate goldark:random/10 run effect give @s hunger 8 0

# Set Magic Sickness
execute store result score @s[tag=goldark.debuff.random] goldark.ability_timer run random value 80..200

# Remove random debuff tag
tag @s[tag=goldark.debuff.random] remove goldark.debuff.random


## END

# Remove tag
execute if score @s goldark.ability_clock matches ..0 run tag @s remove goldark.effect.immunity_divine

# Display ending effects
execute if score @s goldark.ability_clock matches ..0 run particle reverse_portal ~ ~1 ~ 0.01 0.2 0.01 0.033 16

execute if score @s goldark.ability_clock matches ..0 run playsound block.portal.trigger player @s ~ ~ ~ 1 0.8 0.2

# Reset score
scoreboard players reset @s[scores={ goldark.ability_clock=..0 }] goldark.ability_clock