## * AydenTFoxx @ 2025-06-28 .. 2025-06-30
## * 
## * Updates all behaviors related to the Imperial variant of the Magic Catalyst.


# Display particles
particle flame ~ ~0.5 ~ 0.05 0.05 0.05 0.012 2

# Verify spells
execute if block ~ ~ ~ #candles[lit=true] if function goldark:spell/__database/imperial run return run function goldark:entity/spell_catalyst/utils/destroy