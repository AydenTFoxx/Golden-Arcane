## * AydenTFoxx @ 2025-06-25
## * 
## * Updates the Light Bolt's trajectory and behavior.


# Tick timer
scoreboard players remove @s goldark.ability_timer 1

# Display particles
particle end_rod ~ ~ ~ 0.01 0.01 0.01 0.05 2


# Move forwards
tp @s ^ ^ ^0.2

# Harm entities
execute as @e[type=#undead, distance=..1] run damage @s 2 magic by @n[type=interaction, tag=goldark.entity.light_bolt, distance=..1]


# Destroy on collision with block or entity
execute unless block ~ ~ ~ #air run return run function goldark:entity/light_bolt/utils/remove
execute if entity @n[type=#undead, distance=..0.5] run return run function goldark:entity/light_bolt/utils/remove

# Despawn upon expiration
execute if score @s goldark.ability_timer matches 0 run function goldark:entity/light_bolt/utils/remove