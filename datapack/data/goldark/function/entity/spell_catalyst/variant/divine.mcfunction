## * AydenTFoxx @ 2025-06-28
## * 
## * Updates all behaviors related to the Divine variant of the Magic Catalyst.


# Display particles
particle end_rod ~ ~0.5 ~ 0.0 0.0 0.0 0.02 1

# Verify spells
execute if block ~ ~ ~ #candles[lit=true] if function goldark:spell/__database/divine run return run function goldark:entity/spell_catalyst/utils/destroy