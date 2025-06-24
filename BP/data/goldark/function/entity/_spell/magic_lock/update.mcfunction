## * AydenTFoxx @ 2025-06-18 .. 2025-06-23
## * 
## * ...


## AMBIENT

# Rotate self
rotate @s ~10 ~

# Display anchor particles
particle reverse_portal ~ ~0.5 ~ 0.02 0.05 0.02 0.01 1

#? DEBUG: Display AoE particles
execute if data storage goldark:settings { debug_mode: true } run particle end_rod ^ ^ ^8 0.0 0.0 0.0 0.01 1


## BEHAVIOR

# Block doors and gates
execute as @e[type=!#goldark:technical, type=!player, distance=..8] at @s if block ~ ~ ~ #goldark:magic_lock_deny align y run tp @s ^ ^ ^-0.1
execute as @e[type=!#goldark:technical, type=!player, distance=..8] at @s if block ^ ^ ^0.1 iron_bars align y run tp @s ^ ^ ^-0.2

# Pull/push creatures from walls
execute as @e[type=#goldark:player_allies, distance=..8] at @s unless block ~ ~ ~ #goldark:is_breathable facing entity @n[type=marker, tag=goldark.entity.spell_lock, distance=..8] feet run tp @s ^ ^ ^0.2
execute as @e[type=!#goldark:technical, type=!player, type=!#goldark:player_allies, distance=..8] at @s unless block ~ ~ ~ #goldark:is_breathable facing entity @n[type=marker, tag=goldark.entity.spell_lock, distance=..8] feet run tp @s ^ ^ ^-0.2

# Paralyze hostiles
effect give @e[type=!#goldark:technical, predicate=goldark:entity/is_hostile, distance=..6.5] slowness 1 6 true


# Remove self
execute unless block ~ ~ ~ #candles[lit=true] unless block ~ ~-1 ~ #candles[lit=true] run function goldark:entity/_spell/magic_lock/utils/remove