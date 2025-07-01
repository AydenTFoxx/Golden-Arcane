## * AydenTFoxx @ 2025-06-25 .. 2025-06-29
## * 
## * Updates the Light Bolt's trajectory and behavior.


# Tick timer
scoreboard players add @s goldark.ability_timer 1

# Display particles
particle end_rod ~ ~ ~ 0.01 0.01 0.01 0.012 1


# Rotate towards target
rotate @s facing entity @n[type=!#goldark:technical, predicate=goldark:entity/is_hostile, distance=..12]
execute unless entity @n[type=!#goldark:technical, predicate=goldark:entity/is_hostile, distance=..12] run rotate @s facing entity @n[type=!#goldark:technical, predicate=goldark:entity/is_friendly, distance=..12]

# Move torwards target with upwards arc
tp @s ^ ^0.2 ^0.3

# Harm entities
execute as @e[type=#undead, distance=..2] run damage @s 2 magic by @n[type=marker, tag=goldark.entity.light_bolt, distance=..2]

# Heal allies
effect give @e[type=!#goldark:technical, predicate=goldark:entity/is_friendly, distance=..2] regeneration 8 1


# Destroy on collision with block or entity
execute unless block ~ ~ ~ #goldark:is_transparent run return run function goldark:entity/light_bolt/utils/remove
execute if entity @n[type=!#goldark:technical, distance=..0.5] run return run function goldark:entity/light_bolt/utils/remove

# Despawn upon expiration
execute if score @s goldark.ability_timer matches 200.. run function goldark:entity/light_bolt/utils/remove