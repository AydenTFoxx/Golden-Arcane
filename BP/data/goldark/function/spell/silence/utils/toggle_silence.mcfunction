## * AydenTFoxx @ 2025-06-23 .. 2025-06-25
## * 
## * Toggles the Silencing effect of the Silence spell.


## REVOKE

# Remove NBT
execute if entity @s[tag=goldark.is_silenced] run data modify entity @s Silent set value false

# Display "silence" revoking effect
execute if entity @s[tag=goldark.is_silenced] anchored eyes run playsound particle.soul_escape neutral @a[distance=..16] ^ ^ ^ 1 1.2
execute if entity @s[tag=goldark.is_silenced] anchored eyes run particle white_smoke ^ ^ ^ 0.1 0.2 0.1 0.01 8

# Remove tag
execute if entity @s[tag=goldark.is_silenced] run return run tag @s remove goldark.is_silenced


## GRANT

# Ignore if entity cannot be Silenced (has NBT value by other means)
execute if entity @s[nbt={ Silent: 1b }] run return fail


# Set NBT
data modify entity @s Silent set value true

# Add tag
tag @s add goldark.is_silenced


# Display "silence" particles
execute anchored eyes run particle nautilus ^ ^ ^ 0.05 0.2 0.05 0.8 12
execute anchored eyes run particle large_smoke ^ ^ ^ 0.01 0.01 0.01 0.05 4