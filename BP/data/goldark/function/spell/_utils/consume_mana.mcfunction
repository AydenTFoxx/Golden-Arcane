## * AydenTFoxx @ 2025-06-30
## * 
## * Consumes the player's Mana, and if not enough, their health.

##? Function Arguments:
#? cost: The amount of Mana to be taken. Must be an integer between 1 and 20.


# Set Mana (first use)
execute unless score @s goldark.mana matches 0.. run scoreboard players set @s goldark.mana 20

# Consume Mana
$scoreboard players remove @s goldark.mana $(cost)


# Take health if Mana is not enough
execute if score @s goldark.mana matches ..-1 summon marker store result entity @s data.duration int -1.0 run scoreboard players get @p[distance=..8] goldark.mana
execute if score @s goldark.mana matches ..-1 as @e[type=marker, distance=..1] if data entity @s data.duration run tag @s add goldark.mana_penalty

execute if score @s goldark.mana matches ..-1 run function goldark:spell/_utils/consume_health with entity @n[type=marker, tag=goldark.mana_penalty, distance=..1] data
execute if score @s goldark.mana matches ..-1 run kill @n[type=marker, tag=goldark.mana_penalty, distance=..1]

# Reset negative Mana
scoreboard players set @s[scores={ goldark.mana=..-1 }] goldark.mana 0