## * AydenTFoxx @ 2025-06-23* .. 2025-07-09
## * 
## * Updates the Blood Wisp's behaviors and abilities.


# Tick timer
scoreboard players add @s goldark.ability_timer 1

# Double while attacking mobs
execute if entity @n[type=!#goldark:technical, predicate=goldark:entity/is_hostile, distance=..1] run scoreboard players add @s goldark.ability_timer 4


# Display particles
particle dust{ color: 9247757, scale: 1.0 } ~ ~ ~ 0.05 0.05 0.05 0.1 3
execute if score @s goldark.ability_timer matches 60.. run particle smoke ~ ~ ~ 0.05 0.05 0.05 0.05 1


# Heal nearest player
execute if score @s goldark.ability_timer matches 20.. unless entity @n[type=!#goldark:technical, predicate=goldark:entity/is_hostile, distance=..8] facing entity @p[distance=..16] feet run tp @s ^ ^0.1 ^0.25
execute if score @s goldark.ability_timer matches 20.. unless entity @n[type=!#goldark:technical, predicate=goldark:entity/is_hostile, distance=..8] run effect give @p[distance=..1] regeneration 4 1

execute if score @s goldark.ability_timer matches 20.. unless entity @n[type=!#goldark:technical, predicate=goldark:entity/is_hostile, distance=..8] if entity @p[distance=..1] run scoreboard players set @s goldark.ability_timer 200


# Move towards target
execute facing entity @n[type=!#goldark:technical, predicate=goldark:entity/is_hostile, distance=..8] feet run tp @s ^ ^0.2 ^0.2

# Harm mobs
damage @n[type=!#goldark:technical, predicate=goldark:entity/is_hostile, distance=..1] 1 magic by @p[distance=..16]


# Apply final damage
execute if score @s goldark.ability_timer matches 100.. run damage @n[type=!#goldark:technical, predicate=goldark:entity/is_hostile, distance=..2, sort=furthest] 2 indirect_magic by @p[distance=..32]

# Display death animation
execute if score @s goldark.ability_timer matches 100.. run particle small_gust ~ ~ ~ 0.0 0.0 0.0 1.0 1
execute if score @s goldark.ability_timer matches 100.. run playsound particle.soul_escape neutral @a[distance=..16] ~ ~ ~ 0.8 0.5

# Remove self
kill @s[scores={ goldark.ability_timer=100.. }]