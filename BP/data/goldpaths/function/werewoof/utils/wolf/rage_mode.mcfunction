## * AydenTFoxx @ 2025-07-08
## * 
## * Causes the Wolf to enter a bloody rage, gaining buffs while temporarily weakening foes nearby.


## Ignore and apply extra debuffs if already raging
execute if score @s[tag=goldpaths.rage_mode] goldark.ability_timer matches 1.. run return run effect give @e[type=!#goldark:technical, predicate=goldark:entity/is_hostile, distance=..2] poison 8 1


# Display rage effects
particle dust{ color: 12851224, scale: 1.2 } ~ ~1 ~ 0.1 0.2 0.1 0.0 16
particle angry_villager ~ ~1 ~ 0.2 0.4 0.2 1 8

playsound entity.wolf_angry.growl player @a[distance=..32] ~ ~ ~ 2 0.8


# Apply debuffs to hostiles (30s, amplifier 0 each)
effect give @e[type=!#goldark:technical, predicate=goldark:entity/is_hostile, distance=..16] weakness
effect give @e[type=!#goldark:technical, predicate=goldark:entity/is_hostile, distance=..16] slowness

# Apply buffs to Wolf
effect give @s strength 20 1 true
effect give @s speed 20 3 true

effect give @s regeneration 30 2 true


# Add tag
tag @s add goldpaths.rage_mode