## * AydenTFoxx @ 2025-06-27
## * 
## * Spawns a new Magic Catalyst with the provided type data.

##? Function Arguments:
#? type: An Object representing all types of this Catalyst entity.


# Summon entity
$summon marker ~ ~ ~ { CustomName: "Essence of Magic", Tags: [ goldark.entity.spell_catalyst ], data: { goldark: { spell_catalyst: $(type) } } }

# Play audio cue
playsound block.respawn_anchor.charge neutral @a[distance=..16] ~ ~ ~ 1 0.75