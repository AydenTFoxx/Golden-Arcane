## * AydenTFoxx @ 2025-07-06
## * 
## * Removes all custom effects, then resets their respective scores.


# Revoke trigger
advancement revoke @s only goldark:use_item/milk_bucket


# Revoke Luminance
tag @s remove goldark.effect.luminance

# Revoke Purity
tag @s remove goldark.effect.purity


# Reset score
scoreboard players reset @s goldark.ability_clock