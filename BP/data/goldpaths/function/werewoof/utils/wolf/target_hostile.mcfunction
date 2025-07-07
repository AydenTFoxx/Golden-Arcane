## * AydenTFoxx @ 2025-07-05 .. 2025-07-06
## * 
## * Targets the closest hostile mob to the Wolf form.


## Ignore if already angry or targeting a mob
execute unless data entity @s { AngerTime: 0 } run return fail


# Set target mob from UUID
data modify entity @s AngryAt set from entity @n[type=!#goldark:technical, predicate=goldark:entity/is_hostile, distance=..8] UUID

# Set anger time
data modify entity @s AngerTime set value 160