## * AydenTFoxx @ 2025-06-30 .. 2025-07-07
## * 
## * Updates all behaviors related to the Eldritch variant of the Magic Catalyst.


# Display particles
particle nautilus ~ ~1 ~ 0.1 0.15 0.1 0.8 2

# Verify spells
execute if block ~ ~ ~ #goldark:skulls if function goldark:spell/__database/eldritch run return run function goldark:entity/spell_catalyst/utils/destroy