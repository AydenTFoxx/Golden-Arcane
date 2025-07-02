## * AydenTFoxx @ 2025-06-23* .. 2025-06-30
## * 
## * Removes one durability from the target item, and "breaks" it if its durability reaches 0.

##? Function Arguments:
#? slot: The target inventory slot. Will take durability from whichever item is present.
#? max_damage: The max amount of durability loss this item supports; Analogous to the "max_damage" component tag from items.


# Get max damage
$scoreboard players set @s goldark.dummy $(max_damage)


# Remove durability
$execute if score @s goldark.dummy matches ..127 run item modify entity @s $(slot) goldark:damage_low
$execute if score @s goldark.dummy matches 128..511 run item modify entity @s $(slot) goldark:damage_medium
$execute if score @s goldark.dummy matches 512..999 run item modify entity @s $(slot) goldark:damage_high
$execute if score @s goldark.dummy matches 1000.. run item modify entity @s $(slot) goldark:damage_very_high

# Break item
$execute if items entity @s $(slot) *[damage=$(max_damage)] run playsound entity.item.break player @s
$execute if items entity @s $(slot) *[damage=$(max_damage)] run item replace entity @s $(slot) with air

# Reset score
scoreboard players reset @s goldark.dummy