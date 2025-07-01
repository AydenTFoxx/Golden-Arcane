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


# Teleport player
execute if data entity @s interaction if data entity @s data.goldark.spell_gate.dimension run function goldark:spell/warp/utils/teleport_dimension with entity @s data.goldark.spell_gate
execute if data entity @s interaction unless data entity @s data.goldark.spell_gate.dimension run function goldark:spell/warp/utils/teleport with entity @s data.goldark.spell_gate

# Remove self
execute if data entity @s attack run function goldark:spell/warp/utils/remove