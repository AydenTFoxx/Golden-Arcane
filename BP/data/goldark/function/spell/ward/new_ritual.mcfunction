## * AydenTFoxx @ 2025-06-18 .. 2025-06-30
## * 
## * Invokes a new Ward spell with its respective ritual.


## Ignore if a Spell is already present
execute if entity @n[type=marker, tag=goldark.entity.spell_lock, distance=..1] run return fail

## Ignore if no valid player is found
execute unless entity @p[distance=..8, level=1..] run return fail


# Consume Mana
execute as @p[distance=..8] run function goldark:spell/_utils/consume_mana { cost: 4 }

# Consume EXP
xp add @p[distance=..8] -3 points

# Summon Spell
function goldark:spell/ward/new


# Display summoning particles
particle gust ~ ~ ~ 0.0 0.0 0.0 1.0 1
particle enchant ~ ~ ~ 0.0 0.1 0.0 0.8 12

# Play summoning sound
playsound block.beacon.activate block @a[distance=..16] ~ ~ ~ 1 0.75


# Remove self
return run kill @s[type=item]