## * AydenTFoxx @ 2025-06-20 .. 2025-07-04
## * 
## * Spawns Blood Wisps around the player, at the cost of heaçth.

#? Triggered by: Demanding [Enchantment]
#? Requires Health: 1-2 (I); 2-3 (II); 3-4 (III)


# Summon Blood Wisps
execute anchored eyes positioned ^ ^ ^2 run function goldark:entity/blood_wisp/new

execute if predicate goldark:random/50 anchored eyes positioned ^0.5 ^ ^1 run function goldark:entity/blood_wisp/new
execute if predicate goldark:random/25 anchored eyes positioned ^-0.5 ^ ^3 run function goldark:entity/blood_wisp/new