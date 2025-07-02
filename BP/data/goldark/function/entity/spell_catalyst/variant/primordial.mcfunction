## * AydenTFoxx @ 2025-06-28 .. 2025-06-30
## * 
## * Updates all behaviors related to the Primordial variant of the Magic Catalyst.


# Display particles
particle large_smoke ~ ~0.5 ~ 0.0 0.0 0.0 0.01 1

# Verify spells
execute if block ~ ~ ~ #fire if function goldark:spell/__database/primordial run return run function goldark:entity/spell_catalyst/utils/destroy