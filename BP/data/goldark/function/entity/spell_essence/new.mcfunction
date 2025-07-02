## * AydenTFoxx @ 2025-06-30 .. 2025-07-01
## * 
## * Seals the nearest spell into the Scroll, allowing for later re-use.


## Ignore if a spell is already stored
execute if data entity @s data.goldark.StoredSpell.Tags run return run function goldark:entity/spell_essence/destroy


# Grant advancement
advancement grant @p[distance=..16] only goldark:use_spell_essence seal_spell

# Convert Spell entity to wisp (mobile; follows player)
execute as @n[type=#goldark:technical, tag=goldark.is_spell, tag=!goldark.is_essence, distance=..1] run function goldark:entity/spell_essence/utils/convert_to_wisp


# Extract relevant data
data modify entity @s data.goldark.StoredSpell.Tags set from entity @n[type=#goldark:technical, tag=goldark.is_spell, tag=goldark.is_essence, distance=..1] Tags
data modify entity @s data.goldark.StoredSpell.CustomName set from entity @n[type=#goldark:technical, tag=goldark.is_spell, tag=goldark.is_essence, distance=..1] CustomName
data modify entity @s data.goldark.StoredSpell.data set from entity @n[type=#goldark:technical, tag=goldark.is_spell, tag=goldark.is_essence, distance=..1] data

# Get width and height (if entity is minecraft:interaction)
execute if entity @n[type=interaction, tag=goldark.is_spell, tag=goldark.is_essence, distance=..1] run data modify entity @s data.goldark.StoredSpell.width set from entity @n[type=#goldark:technical, tag=goldark.is_spell, tag=goldark.is_essence, distance=..1] width
execute if entity @n[type=interaction, tag=goldark.is_spell, tag=goldark.is_essence, distance=..1] run data modify entity @s data.goldark.StoredSpell.height set from entity @n[type=#goldark:technical, tag=goldark.is_spell, tag=goldark.is_essence, distance=..1] height

# Get Spell name
data modify entity @s data.goldark.name set from entity @n[type=#goldark:technical, tag=goldark.is_spell, tag=goldark.is_essence, distance=..1] CustomName


# Remove Spell entity
kill @n[type=#goldark:technical, tag=goldark.is_spell, tag=goldark.is_essence, distance=..1]


# Display sealing effects
playsound entity.zombie_villager.converted neutral @a[distance=..16] ~ ~ ~ 1 0.8

particle sonic_boom ~ ~ ~
particle flash ~ ~ ~


# Drop item
function goldark:item/spell_essence with entity @s data.goldark

# Remove self
kill @s[type=marker]