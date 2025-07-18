## * AydenTFoxx @ 2025-07-05 .. 2025-07-16
## * 
## * Updates the Banishment spell's effects and behavior.


## Remove if no creature is nearby
execute unless entity @n[type=!#goldark:immune_to_banishment, distance=..8] run return run kill @s


# Tick score
scoreboard players add @s goldark.ability_timer 1


# Rotate self
rotate @s ~20 ~

# Display ambient particles
particle large_smoke ~ ~ ~ 0.0 0.0 0.0 0.01 1


# Apply "ripple effect"
execute if score @s goldark.ability_timer matches ..20 store result entity @s data.distance float 0.05 run scoreboard players add @s goldark.dummy 1
execute if score @s goldark.ability_timer matches 25.. store result entity @s data.distance float 0.05 run scoreboard players remove @s goldark.dummy 1

# Display circle particles
function goldark:spell/banish/utils/display_ripple with entity @s data


# Tag victim
execute if score @s goldark.ability_timer matches 1 run data merge entity @n[type=!#goldark:immune_to_banishment, distance=..8] { HasVisualFire: 1b, NoAI: 1b, Tags: [ "goldark.banishment" ] }
execute if score @s goldark.ability_timer matches 1 run data modify entity @n[type=!#goldark:immune_to_banishment, tag=goldark.banishment, distance=..8] Rotation[1] set value 0.0


# Play trigger sound
execute if score @s goldark.ability_timer matches 1 run playsound block.respawn_anchor.set_spawn neutral @a[distance=..16] ~ ~ ~ 1 1
execute if score @s goldark.ability_timer matches 1 run playsound block.portal.trigger neutral @a[distance=..16] ~ ~ ~ 1 1

# Apply effects
execute if score @s goldark.ability_timer matches 1 run effect give @a[distance=..16] darkness 6 1 true
execute if score @s goldark.ability_timer matches 1 run effect give @a[distance=..16] slowness 6 3 true

effect give @e[type=!#goldark:technical, predicate=goldark:entity/is_hostile, tag=!goldark.banishment, distance=..16] slowness 1 4 true
effect give @e[type=!#goldark:technical, predicate=goldark:entity/is_hostile, tag=!goldark.banishment, distance=..16] weakness 1 2 true


# Trap foe
execute if score @s goldark.ability_timer matches 1..9 run tp @n[type=!#goldark:immune_to_banishment, tag=goldark.banishment, distance=..8] ~ ~1 ~

# Lift upwards
execute if score @s goldark.ability_timer matches 10..28 as @n[type=!#goldark:immune_to_banishment, tag=goldark.banishment, distance=..4] at @s run tp @s ~ ~0.12 ~

# Move to hell
execute if score @s goldark.ability_timer matches 29.. as @n[type=!#goldark:immune_to_banishment, tag=goldark.banishment, distance=..4] at @s run tp @s ~ ~-0.75 ~


# Kill foe
execute if score @s goldark.ability_timer matches 40.. run damage @n[type=!#goldark:immune_to_banishment, tag=goldark.banishment, distance=..8] 200 out_of_world by @s

# Remove self
execute if score @s goldark.ability_timer matches 40.. run function goldark:spell/banish/utils/remove