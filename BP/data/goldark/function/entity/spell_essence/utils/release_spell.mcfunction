## * AydenTFoxx @ 2025-06-30 .. 2025-07-13
## * 
## * Releases the stored spell, destroying the Essence in the process.



# Display spawning effects
playsound block.amethyst_block.chime neutral @a[distance=..16] ~ ~ ~ 0.8 1.5

particle flash ~ ~0.5 ~ 0.0 0.0 0.0 1 1

# Remove self
kill @s[type=marker]


# Summon entity
$execute if data entity @s data.goldark.StoredSpell.width run return run summon interaction ~ ~0.5 ~ $(StoredSpell)
$execute if data entity @s data.goldark.StoredSpell.ExplosionPower run return run summon fireball ~ ~1 ~ $(StoredSpell)
$execute if data entity @s data.goldark.StoredSpell.data.goldark.spell_lock run return run summon marker ~ ~0.5 ~ $(StoredSpell)

$return run summon marker ~ ~ ~ $(StoredSpell)