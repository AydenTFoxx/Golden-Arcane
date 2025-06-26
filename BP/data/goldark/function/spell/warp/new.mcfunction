## * AydenTFoxx @ 2025-06-23* .. 2025-06-25
## * 
## * Summons a new "Warp" Spell entity.

##? Function Arguments:
#? pos: The target coordinates the spell will link to. Must be an Array with three (3) elements.
#? dimension: The target dimension for the coordinates. Must be a namespaced ("minecraft:" optional) resource location.


## -------- SPELL METADATA -------- ##
# 
#? Type: Primordial (Light+Dark)
#? Cost: Medium
# 
#? Is AoE?: No
#? Is persistent: Yes (One-use)
# 
## --------- END OF DATA ---------- ##


# Summon entity
$summon interaction ~ ~ ~ { width: 0.3, height: 0.5, Tags: [ goldark.entity.spell_gate_new, goldark.entity.spell_gate ], data: { goldark: { spell_gate: { pos_raw: $(pos), dimension: "$(dimension)" } } } }

# Set target coordinates
execute as @n[type=interaction, tag=goldark.entity.spell_gate_new, distance=..1] store result entity @s data.goldark.spell_gate.x int 1.0 run data get entity @s data.goldark.spell_gate.pos_raw[0]
execute as @n[type=interaction, tag=goldark.entity.spell_gate_new, distance=..1] store result entity @s data.goldark.spell_gate.y int 1.0 run data get entity @s data.goldark.spell_gate.pos_raw[1]
execute as @n[type=interaction, tag=goldark.entity.spell_gate_new, distance=..1] store result entity @s data.goldark.spell_gate.z int 1.0 run data get entity @s data.goldark.spell_gate.pos_raw[2]


# Remove setup data
data remove entity @n[type=interaction, tag=goldark.entity.spell_gate_new, distance=..1] data.goldark.spell_gate.pos_raw

# Remove initial tag
tag @n[type=interaction, tag=goldark.entity.spell_gate_new, distance=..1] remove goldark.entity.spell_gate_new