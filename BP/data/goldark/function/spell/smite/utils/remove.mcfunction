## * AydenTFoxx @ 2025-06-25 .. 2025-06-30
## * 
## * Removes the Smite spell and returns its original item.


## Ignore until expired
execute if entity @s[tag=goldark.is_essence, tag=!goldark.is_expired] run return run function goldark:entity/spell_essence/update

# Drop item
execute unless entity @s[tag=goldark.is_essence] run function goldark:spell/_utils/drop_item { item: "minecraft:quartz" }


# Display "break" effects
particle explosion ~ ~0.5 ~ 0.0 0.0 0.0 1.0 1

playsound block.spawner.break block @a[distance=..16] ~ ~ ~ 0.8 1.2

# Remove self
kill @s[type=#goldark:technical]