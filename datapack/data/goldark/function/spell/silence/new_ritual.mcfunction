## * AydenTFoxx @ 2025-06-23 .. 2025-06-30
## * 
## * Invokes a new Silence spell with its respective ritual.


## Ignore if a Spell is already present
execute if entity @n[type=marker, tag=goldark.entity.spell_silence, distance=..1] run return fail

## Ignore if no valid player is found
execute unless entity @p[distance=..8, level=1..] run return fail


# Consume Mana
execute as @p[distance=..8] run function goldark:spell/_utils/consume_mana { cost: 5 }

# Consume EXP
xp add @p[distance=..8] -5 points

# Summon Spell
function goldark:spell/silence/new


# Display particles
particle note ~ ~0.5 ~ 0.15 0.1 0.15 0.5 8
particle reverse_portal ~ ~0.5 ~ 0.0 0.1 0.0 0.8 8

# Play summoning sound
playsound block.sculk.break block @a[distance=..16] ~ ~ ~ 1 0.6


# Remove self
return run kill @s[type=item]