## * AydenTFoxx @ 2025-06-23* .. 2025-07-08
## *
## * Summons a new "Warp" Spell entity using the player's "respawn" NBT value.

##? Function Arguments:
#? pos: The target coordinates the spell will link to. Must be an Array with three (3) elements.


## -------- SPELL METADATA -------- ##
#
#? Type: Primordial (Light+Dark)
#? Cost: High (10 Mana)
#
#? Is AoE?: No
#? Is persistent?: Yes (One-use)
#
## --------- END OF DATA ---------- ##


##? SPAWN ENTITY

# Ignore if a Spell is already present
execute if entity @n[type=interaction, tag=goldark.entity.spell_gate, distance=..1] run return fail


# Summon entity
summon interaction ~ ~ ~ { CustomName: "Warp Gate", CustomNameVisible: false, width: 0.3, height: 0.5, Tags: [ goldark.entity.spell_gate_new, goldark.entity.spell_gate, goldark.is_one_use, goldark.is_spell, goldark.spell_gate.targeted ], data: { goldark: { spell_gate: { pos: "" } } } }

# Set target pos
execute if items entity @p[distance=..16] weapon.mainhand paper[custom_name] run data modify entity @n[type=interaction, distance=..1, tag=goldark.entity.spell_gate_new] data.goldark.spell_gate.pos set string entity @p[distance=..16] SelectedItem.components.minecraft:custom_name
execute if items entity @p[distance=..16] weapon.offhand paper[custom_name] run data modify entity @n[type=interaction, distance=..1, tag=goldark.entity.spell_gate_new] data.goldark.spell_gate.pos set string entity @p[distance=..16] equipment.offhand.components.minecraft:custom_name

# Remove initial tag
tag @n[type=interaction, tag=goldark.entity.spell_gate_new, distance=..1] remove goldark.entity.spell_gate_new


##? RITUAL EFFECTS

# Consume Mana
execute as @p[distance=..8] run function goldark:spell/_utils/consume_mana { cost: 10 }


# Display spawning effects
playsound block.respawn_anchor.set_spawn neutral @a[distance=..16] ~ ~ ~ 1 0.75

particle enchant ~ ~1 ~ 0.0 0.1 0.0 0.8 16


# Return success
return 1