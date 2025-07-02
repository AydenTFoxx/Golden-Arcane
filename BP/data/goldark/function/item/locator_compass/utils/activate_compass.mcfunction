## * AydenTFoxx @ 2025-06-29
## * 
## * "Activates" the Compass item, allowing it to locate structures.


# Get input name
data modify entity @s Item.components."minecraft:custom_data".goldark.item_name set from entity @s Item.components."minecraft:custom_name"

# Set placeholder item name
data modify entity @s Item.components."minecraft:custom_name" set value { text: "minecraft:empty", color: "aqua" }

# Set item name to input name
data modify entity @s Item.components."minecraft:custom_name".text set from entity @s Item.components."minecraft:custom_data".goldark.item_name

# Remove stored input data
data remove entity @s Item.components."minecraft:custom_data".goldark.item_name


# Set lore and remove enchantment glint (De-activation)
execute unless data entity @s Item.components."minecraft:custom_name".text run data remove entity @s Item.components."minecraft:enchantment_glint_override"
execute unless data entity @s Item.components."minecraft:custom_name".text run data modify entity @s Item.components."minecraft:lore" set value [ { text: "Rename this item to the structure you wish to locate.", color: "gray", italic: false }, { text: "Activate this artifact with Divine energy to re-use it.", color: "yellow", italic: false } ]

# Set lore and add enchantment glint (Activation)
execute if data entity @s Item.components."minecraft:custom_name".text run data modify entity @s Item.components."minecraft:enchantment_glint_override" set value true
execute if data entity @s Item.components."minecraft:custom_name".text run data modify entity @s Item.components."minecraft:lore" set value [ { text: "Rename this item to the structure you wish to locate.", color: "gray", italic: false }, { text: "Right-click to locate the nearest named structure.", italic: false, color: "white" } ]


# Add motion
data merge entity @s { Motion: [ 0.0d, 0.2d, 0.0d ] }

# Teleport slightly upwards
tp @s ~ ~0.2 ~