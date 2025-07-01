## * AydenTFoxx @ 2025-07-01
## * 
## * Invokes a new Fireball spell with an instantaneous effect.


## Ignore if a Fireball is within the same block
execute if entity @n[type=fireball, distance=..1] run return fail


# Consume Mana
execute as @p[distance=..8] run function goldark:spell/_utils/consume_mana { cost: 9 }

# Summon Spell
function goldark:spell/fireball/new with entity @p[distance=..8]


# Consume blocks
setblock ~ ~-1 ~ fire destroy

fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 air replace fire


# Display summoning particles
particle explosion ~ ~1 ~ 0.0 0.0 0.0 1.0 1
particle flash ~ ~1 ~ 0.0 0.0 0.0 1.0 1

# Play summoning sound
playsound entity.ghast.warn block @a[distance=..16] ~ ~ ~ 0.8 0.66


# Return success
return 1