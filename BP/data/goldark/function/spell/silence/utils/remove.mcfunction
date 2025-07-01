## * AydenTFoxx @ 2025-06-23 .. 2025-06-30
## * 
## * Removes the Silence spell and returns its "waste" item.


## Ignore until expired
execute if entity @s[tag=goldark.is_essence, tag=!goldark.is_expired] run return run function goldark:entity/spell_essence/update

# Drop item
execute unless entity @s[tag=goldark.is_essence] run function goldark:spell/_utils/drop_item { item: "minecraft:amethyst_shard" }


# Display "break" effects
particle flash ~ ~0.5 ~ 0.0 0.0 0.0 1.0 1

playsound block.glass.break block @a[distance=..16] ~ ~ ~ 0.8 0.6

# Remove self
kill @s[type=#goldark:technical]