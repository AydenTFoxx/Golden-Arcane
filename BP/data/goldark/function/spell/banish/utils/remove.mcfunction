## * AydenTFoxx @ 2025-07-05 .. 2025-07-10
## * 
## * Removes the Banishment spell.


# Display "break" effects
particle flash ~ ~ ~ 0.0 0.0 0.0 1.0 1

playsound ambient.nether_wastes.mood block @a[distance=..16] ~ ~ ~ 0.8 0.8


# Consume candle
execute if block ~ ~ ~ #fire run setblock ~ ~ ~ air

# Replace Obsidian with Crying Obsidian
execute if block ~ ~-1 ~ obsidian run setblock ~ ~-1 ~ crying_obsidian
execute if block ~ ~-1 ~ blackstone run setblock ~ ~-1 ~ gilded_blackstone

# Display success particles
particle soul ~ ~1 ~ 0.0 0.0 0.0 0.0 2


# Remove self
kill @s[type=#goldark:technical]