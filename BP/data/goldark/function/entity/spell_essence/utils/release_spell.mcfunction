## * AydenTFoxx @ 2025-06-30
## * 
## * Releases the stored spell, destroying the Essence in the process.


# Summon entity
$execute if data entity @s data.goldark.StoredSpell.width run summon interaction ~ ~0.5 ~ $(StoredSpell)
$execute unless data entity @s data.goldark.StoredSpell.width run summon marker ~ ~ ~ $(StoredSpell)


# Display spawning effects
playsound block.amethyst_block.chime neutral @a[distance=..16] ~ ~ ~ 0.8 1.5

particle flash ~ ~0.5 ~ 0.0 0.0 0.0 1 1

# Remove self
kill @s[type=marker]