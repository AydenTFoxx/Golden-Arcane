## * AydenTFoxx @ 2025-06-30 .. 2025-07-12
## * 
## * Seals the nearest spell into the Scroll, allowing for later re-use.


## Ignore if a spell is already stored
execute if data entity @s data.goldark.StoredSpell.Tags run return run function goldark:entity/spell_essence/destroy


# Grant advancement
advancement grant @p[distance=..16] only goldark:use_essence seal_spell

# Convert Spell entity to Wisp (mobile; follows player)
execute as @n[type=#goldark:technical, tag=goldark.is_spell, tag=!goldark.is_essence, distance=..1] run function goldark:entity/spell_essence/utils/convert_to_wisp


# Extract relevant data
data modify entity @s data.goldark.StoredSpell.Tags set from entity @n[type=#goldark:technical, tag=goldark.is_spell, tag=goldark.is_essence, distance=..1] Tags
data modify entity @s data.goldark.StoredSpell.CustomName set from entity @n[type=#goldark:technical, tag=goldark.is_spell, tag=goldark.is_essence, distance=..1] CustomName
data modify entity @s data.goldark.StoredSpell.data set from entity @n[type=#goldark:technical, tag=goldark.is_spell, tag=goldark.is_essence, distance=..1] data

# Get width and height (if entity is minecraft:interaction)
execute if entity @n[type=interaction, tag=goldark.is_spell, tag=goldark.is_essence, distance=..1] run data modify entity @s data.goldark.StoredSpell.width set from entity @n[type=interaction, tag=goldark.is_spell, tag=goldark.is_essence, distance=..1] width
execute if entity @n[type=interaction, tag=goldark.is_spell, tag=goldark.is_essence, distance=..1] run data modify entity @s data.goldark.StoredSpell.height set from entity @n[type=interaction, tag=goldark.is_spell, tag=goldark.is_essence, distance=..1] height

# Get ExplosionPower (if spell is Fireball)
execute if entity @n[type=fireball, tag=goldark.is_spell, tag=goldark.is_essence, distance=..1] run data modify entity @s data.goldark.StoredSpell.ExplosionPower set from entity @n[type=fireball, tag=goldark.is_spell, tag=goldark.is_essence, distance=..1] ExplosionPower

# Get Spell name
data modify entity @s data.goldark.name set from entity @n[type=#goldark:technical, tag=goldark.is_spell, tag=goldark.is_essence, distance=..1] CustomName

# Remove Wisp tag if player is sneaking
execute if entity @p[distance=..8, predicate=goldark:input/sneak] run data remove entity @s data.goldark.StoredSpell.Tags[2]


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