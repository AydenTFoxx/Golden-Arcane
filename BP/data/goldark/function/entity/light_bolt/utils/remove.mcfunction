## * AydenTFoxx @ 2025-06-25 .. 2025-06-26
## * 
## * Destroys the Light Bolt projectile and harms nearby creatures.


# Display "break" effects
particle end_rod ~ ~ ~ 0.1 0.1 0.1 0.1 4
particle portal ~ ~ ~ 0.0 0.0 0.0 1.0 8

playsound block.amethyst_block.break neutral @a[distance=..16] ~ ~ ~ 0.8 0.6


# Harm hostile creatures
execute as @e[type=#undead, distance=..2] run damage @s 4 magic by @n[type=marker, tag=goldark.entity.light_bolt, distance=..1]
execute as @e[type=!#goldark:technical, type=!#undead, predicate=goldark:entity/is_hostile, distance=..1.5] run damage @s 2 indirect_magic by @n[type=marker, tag=goldark.entity.light_bolt, distance=..1]

# Apply levitation
effect give @e[type=!#goldark:technical, predicate=goldark:entity/is_hostile, distance=..2] levitation 1 0 true


# Remove self
kill @s[type=#goldark:technical]