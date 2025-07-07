## * AydenTFoxx @ 2025-07-05 .. 2025-07-06
## * 
## * Updates the Werewoof Wolf's behavior and abilities.


## Remove if matching player is not nearby
execute unless function goldpaths:__utils/is_same_guid run return run kill @s


# Harm by Iron
execute if block ~ ~ ~ #goldpaths:hurts_werewoof run damage @s 2 on_fire
execute if block ~ ~-0.1 ~ #goldpaths:hurts_werewoof run damage @s 1 on_fire


# Attack nearby foes
execute if entity @n[type=!#goldark:technical, predicate=goldark:entity/is_hostile, distance=..16] run function goldpaths:werewoof/utils/wolf/target_hostile