## * AydenTFoxx @ 2025-06-23* .. 2025-06-25
## * 
## * Removes the Warp spell, without returning any item.


# Display "break" effects
particle explosion ~ ~ ~ 0.0 0.0 0.0 1 1

playsound block.beacon.deactivate block @a[distance=..16] ~ ~ ~ 1 0.5 0.1

# Remove self
kill @s[type=#goldark:technical]