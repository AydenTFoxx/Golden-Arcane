## * AydenTFoxx @ 2025-06-25 .. 2025-07-08
## * 
## * Summons a new "Smite" Spell entity.

## -------- SPELL METADATA -------- ##
# 
#? Type: Divine (Light+Gold)
#? Cost: Medium (7 Mana)
# 
#? Is AoE?: Yes (8; Sentry)
#? Is persistent?: Yes
# 
## --------- END OF DATA ---------- ##


# Summon entity
summon marker ~ ~ ~ { CustomName: { text: "Smite Spell" }, CustomNameVisible: false, Tags: [ goldark.entity.spell_smite, goldark.is_spell ] }