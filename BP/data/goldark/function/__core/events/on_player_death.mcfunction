## * AydenTFoxx @ 2025-07-10 .. 2025-07-16
## * 
## * Runs code exactly once upon a player's death.


# Remove effects
function goldark:effect/_remove_all

# Remove Perks
execute if entity @s[tag=goldpaths.perk_werewoof] run function goldpaths:_perks/werewoof


# Reset combo [Werewoof]
scoreboard players reset @s[scores={ goldpaths.combo=1.. }] goldpaths.combo_timer
scoreboard players reset @s[scores={ goldpaths.combo=1.. }] goldpaths.combo

# Reset abilities [Werewoof]
tag @s[tag=goldpaths.werewoof.lunge] remove goldpaths.werewoof.lunge
tag @s[tag=goldpaths.werewoof.banish] remove goldpaths.werewoof.banish


# Add tag
tag @s add goldark.is_dead

# Reset score
scoreboard players reset @s goldark.deaths_player