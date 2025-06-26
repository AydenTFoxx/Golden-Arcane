## * AydenTFoxx @ 2025-06-25
## * 
## * Invokes a new Smite spell with an instantaneous effect.


# Summon Spell
function goldark:spell/smite/new


# Display summoning particles
particle soul_fire_flame ~ ~0.5 ~ 0.05 0.05 0.05 0.02 12
particle enchant ~ ~0.5 ~ 0.0 0.1 0.0 0.8 8

# Play summoning sound
playsound item.firecharge.use block @a[distance=..16] ~ ~ ~ 1 1.2


# Remove self
kill @s[type=item]