## * AydenTFoxx @ 2025-07-16 .. 2025-07-17
## * 
## * Summons the Banish spell at the targeted entity, if any.


## Banish foe
execute positioned ^ ^ ^4 at @n[type=!#goldark:immune_to_banishment, predicate=goldark:entity/is_hostile, distance=..4] run function goldark:spell/banish/new

# Remove Glowing effect
effect clear @s glowing


# Reset scores
scoreboard players reset @s goldpaths.combo
scoreboard players reset @s goldpaths.combo_timer

# Reset ability
return run tag @s remove goldpaths.werewoof.banish