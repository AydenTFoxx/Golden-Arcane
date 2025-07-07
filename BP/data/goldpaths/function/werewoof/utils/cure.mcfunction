## * AydenTFoxx @ 2025-07-06
## * 
## * Removes the player's Arcane Path.


# Remove perk
execute if entity @s[tag=goldpaths.perk_werewoof] run function goldpaths:_perks/werewoof

# Revoke advancements
advancement revoke @s from goldpaths:werewoof/_main

# Remove tags
tag @s remove goldpaths.has_path
tag @s remove goldpaths.is_werewoof