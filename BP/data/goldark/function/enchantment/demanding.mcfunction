## * AydenTFoxx @ 2025-06-20 .. 2025-06-25
## * 
## * Spawns Blood Wisps around the player, at the cost of EXP.

#? Triggered by: Demanding [Enchantment]
#? Requires EXP: 5


# Ignore if at level 0
execute if entity @s[gamemode=!creative, level=0] run return fail

# Take EXP
xp add @s[gamemode=!creative] -5 points


# Summon Blood Wisps
execute anchored eyes positioned ^ ^ ^2 run function goldark:entity/blood_wisp/new

execute if predicate goldark:random/50 anchored eyes positioned ^0.5 ^ ^1 run function goldark:entity/blood_wisp/new
execute if predicate goldark:random/25 anchored eyes positioned ^-0.5 ^ ^3 run function goldark:entity/blood_wisp/new