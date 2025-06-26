## * AydenTFoxx @ 2025-06-23* .. 2025-06-25
## * 
## * Updates the Warp spell's effects and behavior.


# Display ambient particles
particle smoke ~ ~ ~ 0.1 0.3 0.1 0.01 2
particle witch ~ ~ ~ 0.0 0.1 0.0 0.0 1
particle portal ~ ~ ~ 0.0 0.1 0.0 0.5 1


# Teleport player
execute if data entity @s interaction if data entity @s data.goldark.spell_gate.dimension run function goldark:spell/warp/utils/teleport_dimension with entity @s data.goldark.spell_gate
execute if data entity @s interaction unless data entity @s data.goldark.spell_gate.dimension run function goldark:spell/warp/utils/teleport with entity @s data.goldark.spell_gate

# Remove self
execute if data entity @s attack run function goldark:spell/warp/utils/remove