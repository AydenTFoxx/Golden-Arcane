## * AydenTFoxx @ 2025-06-30
## * 
## * Destroys the Essence entity, dropping itself as a result.


## Ignore if a spell is stored instead
execute if data entity @s data.goldark.StoredSpell.Tags run return run function goldark:entity/spell_essence/utils/release_spell with entity @s data.goldark


# Display "break" effects
playsound block.chain.break neutral @a[distance=..16] ~ ~ ~ 1 0.8
playsound block.amethyst_block.break neutral @a[distance=..16] ~ ~ ~ 0.8 0.8

particle explosion ~ ~0.5 ~ 0.0 0.0 0.0 1 1
particle portal ~ ~0.5 ~ 0.0 0.0 0.0 0.9 16


# Drop item
function goldark:item/spell_essence { StoredSpell: {}, name: "Scroll of Essence" }

# Remove self
kill @s[type=marker]