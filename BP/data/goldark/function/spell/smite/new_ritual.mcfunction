## * AydenTFoxx @ 2025-06-25 .. 2025-07-08
## * 
## * Invokes a new Smite spell with an instantaneous effect.


## Ignore if a Spell is already present
execute if entity @n[type=marker, tag=goldark.entity.spell_smite, distance=..1] run return fail


# Consume Mana
execute as @p[distance=..8] run function goldark:spell/_utils/consume_mana { cost: 7 }

# Summon Spell
function goldark:spell/smite/new


# Display summoning particles
particle sonic_boom ~ ~0.5 ~ 0.0 0.0 0.0 0.0 1
particle enchant ~ ~0.5 ~ 0.0 0.1 0.0 0.8 8

# Play summoning sound
playsound block.conduit.activate block @a[distance=..16] ~ ~ ~ 1 1.2


# Remove self
return run kill @s[type=item]