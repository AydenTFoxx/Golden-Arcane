## * AydenTFoxx @ 2025-07-10


effect give @s regeneration 8 0
effect give @s saturation 2 0 true

execute unless score @s goldpaths.combo matches 10.. run return fail

effect give @s strength 12 1

execute unless score @s goldpaths.combo matches 20.. run return fail

effect give @s absorption 30 2
effect give @s resistance 30 0

effect give @e[type=!#goldark:technical, predicate=goldark:entity/is_hostile, distance=..8] weakness 8 1

execute unless score @s goldpaths.combo matches 50.. run return fail

effect give @s glowing 3 0

effect give @e[type=!#goldark:technical, predicate=goldark:entity/is_hostile, distance=..8] poison 8 1