## * AydenTFoxx @ 2025-06-30
## * 
## * Invokes a new Deflect spell with an instantaneous effect.


## Ignore if a Spell is already present
execute if entity @n[type=marker, tag=goldark.entity.spell_deflect, distance=..1] run return fail


# Consume Mana
execute as @p[distance=..8] run function goldark:spell/_utils/consume_mana { cost: 5 }

# Summon Spell
function goldark:spell/deflect/new


# Display summoning particles
particle gust ~ ~0.5 ~ 0.0 0.0 0.0 1.0 1
particle happy_villager ~ ~1 ~ 0.1 0.1 0.1 0.8 12

# Play summoning sound
playsound entity.breeze.idle_ground block @a[distance=..16] ~ ~ ~ 1 0.75


# Remove self
return run kill @s[type=item]