## * AydenTFoxx @ 2025-07-08
## * 
## * ...


effect give @s levitation 2 0 true

effect give @e[type=!#goldark:technical, type=!#goldark:player_allies, distance=..16] slowness 8 4 true
effect give @e[type=!#goldark:technical, type=!#goldark:player_allies, distance=..16] slowness 16 3 true
effect give @e[type=!#goldark:technical, type=!#goldark:player_allies, distance=..8] wither 12 3 true

effect give @s darkness 5 1
effect give @s resistance 8 2 true


particle flash ~ ~1 ~ 0.0 0.0 0.0 1 1
particle end_rod ~ ~1 ~ 0.0 0.0 0.0 1 20

playsound entity.zombie_villager.cure player @a[distance=..24] ~ ~ ~ 1 0.8