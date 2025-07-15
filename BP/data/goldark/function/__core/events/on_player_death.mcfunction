## * AydenTFoxx @ 2025-07-10


# Remove effects
function goldark:effect/_remove_all

# Remove Perks
execute if entity @s[tag=goldpaths.perk_werewoof] run function goldpaths:_perks/werewoof


# Add tag
tag @s add goldark.is_dead

# Reset score
scoreboard players reset @s goldark.deaths_player