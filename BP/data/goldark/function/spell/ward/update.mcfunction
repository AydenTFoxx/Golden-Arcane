## * AydenTFoxx @ 2025-06-18 .. 2025-06-24
## * 
## * Updates the Ward spell's effects and behavior.


## AMBIENT

# Rotate self
rotate @s ~10 ~

# Display ambient particles
particle reverse_portal ~ ~ ~ 0.02 0.05 0.02 0.02 1

#? DEBUG: Display AoE particles
execute if data storage goldark:settings { debug_mode: true } run particle end_rod ^ ^ ^4 0.0 0.0 0.0 0.01 1


## BEHAVIOR

# Block doors and gates
execute as @e[type=!#goldark:technical, type=!player, distance=..4] at @s if block ~ ~ ~ #goldark:magic_lock_deny align y run tp @s ^ ^ ^-0.1
execute as @e[type=!#goldark:technical, type=!player, distance=..4] at @s if block ^ ^ ^0.1 iron_bars align y run tp @s ^ ^ ^-0.2

# Pull/push creatures from walls
execute as @e[type=#goldark:player_allies, distance=..4] at @s unless block ~ ~ ~ #goldark:is_breathable facing entity @n[type=marker, tag=goldark.entity.spell_lock, distance=..4] feet run tp @s ^ ^ ^0.2
execute as @e[type=!#goldark:technical, type=!player, type=!#goldark:player_allies, distance=..4] at @s unless block ~ ~ ~ #goldark:is_breathable facing entity @n[type=marker, tag=goldark.entity.spell_lock, distance=..4] feet run tp @s ^ ^ ^-0.2

# Paralyze hostiles
effect give @e[type=!#goldark:technical, predicate=goldark:entity/is_hostile, distance=..2.5] slowness 1 6 true


# Link to nearby spells
execute as @n[type=marker, tag=goldark.entity.spell_lock, distance=1..8, limit=2] run function goldark:spell/ward/utils/link_spell with entity @n[type=marker, tag=goldark.entity.spell_lock, distance=..1] data.goldark.spell_lock

# Zap trespassers
execute if entity @n[type=marker, tag=goldark.entity.spell_lock, distance=1..8] as @n[type=!#goldark:technical, predicate=goldark:entity/is_hostile, distance=..4.5] at @s if block ~ ~ ~ #goldark:magic_lock_link run damage @s 1 indirect_magic by @n[type=marker, tag=goldark.entity.spell_lock, distance=..4.5]
execute if entity @n[type=marker, tag=goldark.entity.spell_lock, distance=1..8] as @n[type=!#goldark:technical, predicate=goldark:entity/is_hostile, distance=..4.5] at @s if block ~ ~-1 ~ #goldark:magic_lock_link run damage @s 1 indirect_magic by @n[type=marker, tag=goldark.entity.spell_lock, distance=..4.5]


# Remove self
execute unless block ~ ~ ~ #candles[lit=true] unless block ~ ~-1 ~ #candles[lit=true] run function goldark:spell/ward/utils/remove