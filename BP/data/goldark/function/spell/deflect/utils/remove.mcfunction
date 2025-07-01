## * AydenTFoxx @ 2025-06-30
## * 
## * Removes the Deflect spell and returns its original item.


## Ignore until expired
execute if entity @s[tag=goldark.is_essence, tag=!goldark.is_expired] run return run function goldark:entity/spell_essence/update

# Drop item
execute unless entity @s[tag=goldark.is_essence] run function goldark:spell/_utils/drop_item { item: "minecraft:bone" }


# Display "break" effects
particle small_gust ~ ~0.5 ~ 0.0 0.0 0.0 1.0 1
particle angry_villager ~ ~0.5 ~ 0.1 0.2 0.1 1.0 4

playsound entity.breeze.death block @a[distance=..16] ~ ~ ~ 0.8 0.75

# Remove self
kill @s[type=#goldark:technical]