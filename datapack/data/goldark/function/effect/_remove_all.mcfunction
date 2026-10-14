## * AydenTFoxx @ 2025-07-06
## *
## * Removes all custom effects, then resets their respective scores.


# Revoke trigger
advancement revoke @s only goldark:use_item/milk_bucket


# Revoke Luminance
tag @s remove goldark.effect.luminance

# Revoke Purity
tag @s remove goldark.effect.purity


# Deny Holy Sickness
execute if score @s goldark.effect_timer.holy_sickness matches 100.. unless score @s goldark.deaths_player matches 1.. run function goldark:effect/holy_sickness/overlay

# Revoke Holy Numbness
execute if score @s goldark.effect_timer.holy_numbness matches 1.. run scoreboard players set @s goldark.effect_timer.holy_numbness 2


# Reset score
scoreboard players reset @s goldark.ability_clock