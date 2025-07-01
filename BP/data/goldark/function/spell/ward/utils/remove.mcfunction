## * AydenTFoxx @ 2025-06-25 .. 2025-06-30
## * 
## * Removes the Smite spell and returns its "waste" item.


## Ignore until expired
execute if entity @s[tag=goldark.is_essence, tag=!goldark.is_expired] run return run function goldark:entity/spell_essence/update

# Drop item
execute unless entity @s[tag=goldark.is_essence] run function goldark:spell/_utils/drop_item { item: "minecraft:gunpowder" }


# Display "break" effects
particle small_gust ~ ~ ~ 0.0 0.0 0.0 1.0 1

playsound block.conduit.deactivate block @a[distance=..16] ~ ~ ~ 0.8 0.55

# Remove self
kill @s[type=#goldark:technical]