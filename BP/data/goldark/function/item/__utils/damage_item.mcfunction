## * AydenTFoxx @ 2025-06-23* .. 2025-06-25
## * 
## * Removes one durability from the target item, and "breaks" it if its durability reaches 0.

##? Function Arguments:
#? slot: The target inventory slot. Will take durability from whichever item is present.
#? max_damage: The max amount of durability loss this item supports; Analogous to the "max_damage" component tag from items.


# Remove durability
$item modify entity @s $(slot) goldark:damage

# Break item
$execute if items entity @s $(slot) *[damage=120] run playsound entity.item.break player @s
$execute if items entity @s $(slot) *[damage=120] run item replace entity @s $(slot) with air