## * AydenTFoxx @ 2025-06-18 .. 2025-07-17
## *
## * Summons a new "Ward" Spell entity.

## -------- SPELL METADATA -------- ##
#
#? Type: Imperial (Light+Blood)
#? Cost: Low (4 Mana, 3 EXP)
#
#? Is AoE?: Yes (16)
#? Is persistent?: Yes
#
## --------- END OF DATA ---------- ##


# Summon entity
summon marker ~ ~ ~ { CustomName: { text: "Quarry Spell" }, CustomNameVisible: false, Tags: [ goldark.entity.spell_quarry, goldark.is_spell ], data: { goldark: { spell_quarry: {} } } }

## Set target block and origin pos

# Get X pos
execute store result score @s goldark.dummy run data get entity @s Pos[0]

