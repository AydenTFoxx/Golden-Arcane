## * AydenTFoxx @ 2025-06-30
## * 
## * Binds a Spell entity to a player and converts it to a Wisp.
## * 
## * Wisp Spells follow the player and despawn after a set amount of time.


# Give player a GUID if none is detected
execute as @p[distance=..16] unless score @s goldark.guid matches 1.. run function goldark:spell/_utils/new_guid


# Set own GUID to player's
scoreboard players operation @s goldark.guid = @p[distance=..16] goldark.guid

# Store GUID to entity data
execute store result entity @s data.goldark.guid int 1.0 run scoreboard players get @s goldark.guid

# Add tag
tag @s add goldark.is_essence