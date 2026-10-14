## * AydenTFoxx @ 2025-06-23* .. 2025-06-30
## *
## * Updates the Warp spell's effects and behavior.


# Tick ambience clock
scoreboard players add @s goldark.ambience 1

# Play ambient sound
execute if score @s goldark.ambience matches 20 run playsound block.portal.ambient neutral @a[distance=..16] ~ ~ ~ 0.8 0.8

# Reset ambience clock
scoreboard players reset @s[scores={ goldark.ambience=100.. }] goldark.ambience


# Display ambient particles
particle smoke ~ ~ ~ 0.1 0.2 0.1 0.01 4
particle witch ~ ~ ~ 0.0 0.1 0.0 0.0 2
particle portal ~ ~ ~ 0.0 0.1 0.0 0.5 2

# Display unique particles
execute if entity @s[tag=goldark.spell_gate.death] run particle large_smoke ~ ~ ~ 0.0 0.0 0.0 0.01 2
execute if entity @s[tag=goldark.spell_gate.targeted] run particle enchant ~ ~.5 ~ 0.0 0.0 0.0 0.5 1


# Teleport player
execute if data entity @s interaction run function goldark:spell/warp/select_teleport

# Remove self
execute if data entity @s attack run function goldark:spell/warp/utils/remove