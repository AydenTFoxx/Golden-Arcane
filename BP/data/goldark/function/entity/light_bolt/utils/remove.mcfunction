## * AydenTFoxx @ 2025-06-25
## * 
## * Destroys the Light Bolt projectile and harms nearby creatures.


# Display "break" effects
particle end_rod ~ ~ ~ 0.1 0.1 0.1 0.1 4
particle portal ~ ~ ~ 0.0 0.0 0.0 1.0 8

playsound block.amethyst_block.break neutral @a[distance=..16] ~ ~ ~ 1 0.8


# Harm hostile creatures
execute as @e[type=#undead, distance=..2] run damage @s 4 magic by @n[type=interaction, tag=goldark.entity.light_bolt, distance=..1]
execute as @e[type=!#goldark:technical, type=!#undead, distance=..1.5] run damage @s 2 indirect_magic by @n[type=interaction, tag=goldark.entity.light_bolt, distance=..1]

# Remove self
kill @s[type=#goldark:technical]