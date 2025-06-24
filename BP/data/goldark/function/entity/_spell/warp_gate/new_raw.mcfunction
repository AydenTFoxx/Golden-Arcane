$summon interaction ~ ~ ~ { width: 0.3, height: 0.5, Tags: [ goldark.entity.warp_gate_new, goldark.entity.warp_gate ], data: { goldark: { warp_gate: { pos_raw: $(pos) } } } }

execute as @n[type=interaction, tag=goldark.entity.spell_gate_new, distance=..1] store result entity @s data.goldark.warp_gate.x int 1.0 run data get entity @s data.goldark.warp_gate.pos_raw[0]
execute as @n[type=interaction, tag=goldark.entity.spell_gate_new, distance=..1] store result entity @s data.goldark.warp_gate.y int 1.0 run data get entity @s data.goldark.warp_gate.pos_raw[1]
execute as @n[type=interaction, tag=goldark.entity.spell_gate_new, distance=..1] store result entity @s data.goldark.warp_gate.z int 1.0 run data get entity @s data.goldark.warp_gate.pos_raw[2]

data remove entity @n[type=interaction, tag=goldark.entity.spell_gate_new, distance=..1] data.goldark.warp_gate.pos_raw
tag @n[type=interaction, tag=goldark.entity.spell_gate_new, distance=..1] remove goldark.entity.warp_gate_new