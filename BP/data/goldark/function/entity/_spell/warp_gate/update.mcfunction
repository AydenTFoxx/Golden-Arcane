particle smoke ~ ~ ~ 0.1 0.3 0.1 0.01 2
particle witch ~ ~ ~ 0.0 0.1 0.0 0.0 1
particle portal ~ ~ ~ 0.0 0.1 0.0 0.5 1

execute if data entity @s interaction if data entity @s data.goldark.warp_gate.dimension run function goldark:entity/_spell/warp_gate/utils/teleport_dimension with entity @s data.goldark.warp_gate
execute if data entity @s interaction unless data entity @s data.goldark.warp_gate.dimension run function goldark:entity/_spell/warp_gate/utils/teleport with entity @s data.goldark.warp_gate

execute if data entity @s attack run function goldark:entity/_spell/warp_gate/utils/remove