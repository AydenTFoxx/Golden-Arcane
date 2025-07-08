## * AydenTFoxx @ 2025-06-23 .. 2025-07-08
## * 
## * Summons a new "Silence" Spell entity.

## -------- SPELL METADATA -------- ##
# 
#? Type: Imperial (Light+Blood)
#? Cost: Medium (5 Mana, 5 EXP)
# 
#? Is AoE?: Yes (16)
#? Is persistent?: Yes
# 
## --------- END OF DATA ---------- ##


# Summon entity
summon marker ~ ~ ~ { CustomName: { text: "Silence Spell" }, CustomNameVisible: false, Tags: [ goldark.entity.spell_silence, goldark.is_spell ] }