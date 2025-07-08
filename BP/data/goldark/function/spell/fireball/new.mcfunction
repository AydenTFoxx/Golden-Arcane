## * AydenTFoxx @ 2025-07-01 .. 2025-07-08
## * 
## * Summons a new "Fireball" Spell entity.

## -------- SPELL METADATA -------- ##
# 
#? Type: Forbidden (Dark+Gold)
#? Cost: Medium (9 Mana)
# 
#? Is AoE?: No
#? Is persistent?: Yes (One-use)
# 
## --------- END OF DATA ---------- ##


# Summon entity
$summon fireball ~ ~ ~ { CustomName: { text: "Fireball Spell" }, Tags: [ goldark.entity.spell_fireball, goldark.is_spell ], ExplosionPower: 3, Owner: $(UUID) }