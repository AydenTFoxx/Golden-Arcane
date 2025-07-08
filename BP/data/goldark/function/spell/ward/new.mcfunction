## * AydenTFoxx @ 2025-06-18 .. 2025-07-08
## * 
## * Summons a new "Ward" Spell entity.

## -------- SPELL METADATA -------- ##
# 
#? Type: Imperial (Light+Blood)
#? Cost: Low (4 Mana, 3 EXP)
# 
#? Is AoE?: Yes (4)
#? Is persistent?: Yes
# 
## --------- END OF DATA ---------- ##


# Summon entity
summon marker ~ ~ ~ { CustomName: { text: "Ward Spell" }, CustomNameVisible: false, Tags: [ goldark.entity.spell_lock, goldark.is_spell ], data: { goldark: { spell_lock: {} } } }

# Set coordinates for linking
execute as @n[type=marker, tag=goldark.entity.spell_lock, distance=..1] run data modify entity @s data.goldark.spell_lock.x set from entity @s Pos[0]
execute as @n[type=marker, tag=goldark.entity.spell_lock, distance=..1] run data modify entity @s data.goldark.spell_lock.y set from entity @s Pos[1]
execute as @n[type=marker, tag=goldark.entity.spell_lock, distance=..1] run data modify entity @s data.goldark.spell_lock.z set from entity @s Pos[2]