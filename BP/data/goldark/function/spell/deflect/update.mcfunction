## * AydenTFoxx @ 2025-06-30 .. 2025-07-10
## * 
## * Updates the Deflect spell's effects and behavior.


## AMBIENT

# Rotate self
execute if data storage goldark:settings { debug_mode: true } run rotate @s ~10 ~

# Display ambient particles
particle white_smoke ~ ~0.5 ~ 0.02 0.05 0.02 0.015 2

#? DEBUG: Display AoE particles
execute if data storage goldark:settings { debug_mode: true } run particle end_rod ^ ^ ^8 0.0 0.0 0.0 0.01 1


## BEHAVIOR

# Revert projectiles trajectory
execute as @e[type=#impact_projectiles, distance=..8, tag=!goldark.deflected] store result entity @s Motion double -0.1 run data get entity @s Motion

tag @e[type=#impact_projectiles, distance=..8] add goldark.deflected


# Remove self
execute if entity @s[tag=goldark.is_essence] run return run function goldark:spell/deflect/utils/remove
execute unless block ~ ~ ~ #candles[lit=true] unless block ~ ~-1 ~ #candles[lit=true] run function goldark:spell/deflect/utils/remove