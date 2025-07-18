## * AydenTFoxx @ 2025-07-10 .. 2025-07-16
## * 
## * Grants stackable buffs upon the player, depending on their combo score.
## * At high enough combo streaks, enemies also gain debuffs themselves.


## Tier 0
effect give @s regeneration 2 0
effect give @s saturation 1 0 true

execute unless score @s goldpaths.combo matches 10.. run return fail


## Tier I
effect give @s strength 4 0

execute unless score @s goldpaths.combo matches 30.. run return fail


## Tier II
effect give @s absorption 8 1
effect give @s resistance 8 0

effect give @e[type=!#goldark:technical, predicate=goldark:entity/is_hostile, distance=..8] weakness 8 1

execute unless score @s goldpaths.combo matches 50.. run return fail


## Tier III
effect give @s glowing 12 0

effect give @e[type=!#goldark:technical, predicate=goldark:entity/is_hostile, distance=..8] poison 8 1