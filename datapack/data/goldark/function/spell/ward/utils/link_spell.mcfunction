## * AydenTFoxx @ 2025-06-24 .. 2025-06-27
## * 
## * Displays a "link" between two Ward spells.

##? Function Arguments:
#? x: The X coordinate of the target Ward spell.
#? y: The Y coordinate of the target Ward spell.
#? z: The Z coordinate of the target Ward spell.

#? Note: All arguments are provided by the Spell entity's "data.goldark.spell_lock" NBT value.


# Display particles
$execute at @s run particle trail{ target: [ $(x), $(y), $(z) ], duration: 40s, color: 13509411 } ~ ~ ~ 0.0 0.0 0.0 1.0 2