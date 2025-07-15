## * AydenTFoxx @ 2025-07-06 .. 2025-07-08
## * 
## * Removes the player's Arcane Path.


## Ignore if not a woof
execute unless entity @s[tag=goldpaths.is_werewoof] run return fail


# Remove perk
execute if entity @s[tag=goldpaths.perk_werewoof] run function goldpaths:_perks/werewoof

# Revoke advancements
advancement revoke @s from goldpaths:_root

# Remove from Werewoof team
team leave @s


# Remove tags
tag @s remove goldpaths.has_path
tag @s remove goldpaths.is_werewoof