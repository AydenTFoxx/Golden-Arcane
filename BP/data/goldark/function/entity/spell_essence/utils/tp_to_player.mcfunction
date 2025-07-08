## * AydenTFoxx @ 2025-06-30 .. 2025-07-07
## * 
## * Teleports the Wisp Spell entity to the player of same GUID.


## Remove self if player does not exist
$execute unless entity @n[type=player, scores={ goldark.guid=$(guid) }] run return run scoreboard players set @s goldark.ability_clock 300


# Teleport to player
$execute at @p[scores={ goldark.guid=$(guid) }] run tp @s ~ ~0.5 ~