## * AydenTFoxx @ 2025-06-29 .. 2025-06-30
## * 
## * Updates a Wisp entity (not the Essence itself), preventing it to expire until a given time.


# Tick timer
scoreboard players add @s goldark.ability_clock 1

# Add tag
tag @s[scores={ goldark.ability_clock=300.. }] add goldark.is_expired


# Teleport to linked player
function goldark:entity/spell_essence/utils/tp_to_player with entity @s data.goldark