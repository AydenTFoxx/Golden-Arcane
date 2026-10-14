execute if data entity @s data.goldark.spell_gate.pos run return run function goldark:spell/warp/utils/teleport_raw with entity @s data.goldark.spell_gate
execute if data entity @s data.goldark.spell_gate.dimension run return run function goldark:spell/warp/utils/teleport_dimension with entity @s data.goldark.spell_gate

return run function goldark:spell/warp/utils/teleport with entity @s data.goldark.spell_gate