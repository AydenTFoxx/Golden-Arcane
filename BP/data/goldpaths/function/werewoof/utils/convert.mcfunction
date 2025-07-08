## * AydenTFoxx @ 2025-07-06 .. 2025-07-08
## * 
## * Changes the player's Arcane Path to WEREWOOF.


## Ignore if already a woof
execute if entity @s[tag=goldpaths.is_werewoof] run return fail


# Grant Paths advancement
advancement grant @s[tag=!goldpaths.has_path] only goldpaths:_root

# Add tags
tag @s add goldpaths.has_path
tag @s add goldpaths.is_werewoof