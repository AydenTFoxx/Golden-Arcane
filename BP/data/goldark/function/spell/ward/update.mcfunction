## * AydenTFoxx @ 2025-06-18 .. 2025-07-10
## * 
## * Updates the Ward spell's effects and behavior.


## AMBIENT

# Rotate self
execute if data storage goldark:settings { debug_mode: true } run rotate @s ~10 ~

# Display ambient particles
particle reverse_portal ~ ~ ~ 0.02 0.05 0.02 0.02 2

#? DEBUG: Display AoE particles
execute if data storage goldark:settings { debug_mode: true } run particle end_rod ^ ^ ^4 0.0 0.0 0.0 0.01 1
execute if data storage goldark:settings { graphics: "Fancy" } run particle dust{ color: 9831716, scale: 1.0 } ^ ^ ^4 0.0 0.1 0.0 0.05 0 normal @a[tag=goldark.is_hostile, distance=..16]


## BEHAVIOR

# Block doors and gates
execute as @e[type=!#goldark:technical, type=!player, distance=..4] at @s if block ~ ~ ~ #goldark:magic_lock_deny align y run tp @s ^ ^ ^-0.1

# Block hostile creatures
execute as @e[type=!#goldark:technical, type=!player, predicate=goldark:entity/is_hostile, distance=..3] at @s facing entity @n[type=marker, tag=goldark.entity.spell_lock, distance=..3] feet run tp @s ^ ^0.1 ^-0.2


# Pull/push creatures from walls
execute as @e[type=!#goldark:technical, type=!player, predicate=goldark:entity/is_friendly, distance=..4] at @s unless block ~ ~ ~ #goldark:is_breathable facing entity @n[type=marker, tag=goldark.entity.spell_lock, distance=..4] feet run tp @s ^ ^ ^0.2
execute as @e[type=!#goldark:technical, type=!#goldark:player_allies, distance=..4] at @s unless block ~ ~ ~ #goldark:is_breathable facing entity @n[type=marker, tag=goldark.entity.spell_lock, distance=..4] feet run tp @s ^ ^ ^-0.2

# Paralyze hostiles
effect give @e[type=!#goldark:technical, type=!player, predicate=goldark:entity/is_hostile, distance=..2.5] slowness 1 6
effect give @a[predicate=goldark:entity/is_vulnerable, tag=goldark.is_hostile, distance=..2.5] slowness 1 5


# Remove self
execute if entity @s[tag=goldark.is_essence] run return run function goldark:spell/ward/utils/remove
execute unless block ~ ~ ~ #candles[lit=true] unless block ~ ~-1 ~ #candles[lit=true] run function goldark:spell/ward/utils/remove