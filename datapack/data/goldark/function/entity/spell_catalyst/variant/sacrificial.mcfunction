## * AydenTFoxx @ 2025-07-03
## * 
## * Updates all behaviors related to the Sacrificial variant of the Magic Catalyst.


# Display particles
particle witch ~ ~0.5 ~ 0.1 0.15 0.1 0.0 1

# Verify spells
execute align y if block ~ ~ ~ enchanting_table if function goldark:spell/__database/sacrificial run return run function goldark:entity/spell_catalyst/utils/destroy