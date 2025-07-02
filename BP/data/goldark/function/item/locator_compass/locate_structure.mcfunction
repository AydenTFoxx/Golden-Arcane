## * AydenTFoxx @ 2025-06-29
## * 
## * Locates the nearest structure using the Compass's name for input.


# Locate nearest structure
$execute store result score @s goldark.dummy run locate structure $(text)


# Display data
title @s actionbar { translate: "The nearest %s is %s blocks away.", with: [ { entity: "@s", nbt: "SelectedItem.components.minecraft:custom_name.text", color: "green" }, { score: { name: "@s", objective: "goldark.dummy" }, color: "yellow" } ] }

# Reset score
scoreboard players reset @s goldark.dummy