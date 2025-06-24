## * AydenTFoxx @ 2025-06-20
## * 
## * E


# Ignore if at level 0
execute if entity @s[gamemode=!creative, level=0] run return fail

# Take exp
xp add @s[gamemode=!creative] -5 points


# Summon blood wisps
execute anchored eyes positioned ^ ^ ^2 run function goldark:entity/blood_wisp/new

execute if predicate goldark:random/50 anchored eyes positioned ^0.5 ^ ^1 run function goldark:entity/blood_wisp/new
execute if predicate goldark:random/25 anchored eyes positioned ^-0.5 ^ ^3 run function goldark:entity/blood_wisp/new


# Retribute status effects
execute if data entity @s active_effects run data modify entity @n[type=!#goldark:technical, nbt={ HurtTime: 20s }, distance=..8] active_effects append from entity @s active_effects