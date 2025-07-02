## * AydenTFoxx @ 2025-06-30
## * 
## * Displays the user's Mana level, while slowly regenerating it.


# Set cooldown
scoreboard players set @s goldark.ability_timer 10

tag @s add goldark.magic_sickness

# Recharge Mana
scoreboard players add @s goldark.mana 1


# Display Mana level
title @s actionbar [{ "text": "[ ", color: "gray" }, { translate: "Mana: %s", "color": "white", with: [ { score: { name: "@s", objective: "goldark.mana" }, color: "aqua" } ] }, { "text": " ]", color: "gray" }]