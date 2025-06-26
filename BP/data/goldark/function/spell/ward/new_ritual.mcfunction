## * AydenTFoxx @ 2025-06-18 .. 2025-06-25
## * 
## * Invokes a new Ward spell with an instantaneous effect.


# Summon Spell
function goldark:spell/ward/new


# Display summoning particles
particle gust ~ ~ ~ 0.0 0.0 0.0 1.0 1
particle enchant ~ ~ ~ 0.0 0.1 0.0 0.8 12

# Play summoning sound
playsound block.respawn_anchor.set_spawn block @a[distance=..16] ~ ~ ~ 1 0.6


# Remove self
kill @s[type=item]