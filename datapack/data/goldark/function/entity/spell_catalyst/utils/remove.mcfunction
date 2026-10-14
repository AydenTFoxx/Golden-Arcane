## * AydenTFoxx @ 2025-06-27 .. 2025-06-30
## * 
## * Removes the Catalyst while dropping itself.


# Display despawning/"deactivate" effects
particle sonic_boom ~ ~0.5 ~ 0.0 0.0 0.0 1 1

playsound block.vault.deactivate neutral @a[distance=..16] ~ ~ ~ 0.8 0.8
playsound block.beacon.deactivate neutral @a[distance=..16] ~ ~ ~ 0.8 1.2


# Drop item
function goldark:item/spell_catalyst with entity @s data.goldark.spell_catalyst

# Remove self
kill @s[type=#goldark:technical]