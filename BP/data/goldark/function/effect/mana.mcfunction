## * AydenTFoxx @ 2025-07-01
## * 
## * Grants the user some Mana, while also inflicting Magic Sickness.


# Reset trigger
advancement revoke @s only goldark:use_item/potion_mana

# Set random amount
execute store result score @s goldark.dummy run random value 5..10


# Add Mana (capped to 19)
scoreboard players operation @s goldark.mana += @s goldark.dummy

execute if score @s goldark.mana matches 20.. run scoreboard players set @s goldark.mana 19

# Display Mana (increases by 1)
function goldark:spell/_utils/update_mana


# Add Magic Sickness
scoreboard players add @s goldark.ability_timer 50

tag @s add goldark.magic_sickness


# Reset score
scoreboard players reset @s goldark.dummy