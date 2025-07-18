## * AydenTFoxx @ 2025-07-05 .. 2025-07-10
## * 
## * Updates the Werewoof user's behaviors and abilities.


##? ACTIONS

## Transformed: Control Wolf
execute if entity @s[tag=goldpaths.is_transformed] run return run function goldpaths:werewoof/update/wolf_controls

## Non-transformed: Grant player abilities
execute if entity @s[scores={ goldpaths.combo=1.. }] run function goldpaths:werewoof/update/player_controls

## Transform player
execute if predicate goldark:input/sprint if predicate goldark:input/backward run return run function goldpaths:werewoof/utils/transform


##? TRAITS

## Grant Werewoof Perk
execute if entity @s[tag=!goldpaths.perk_werewoof, tag=!goldark.is_dead] run function goldpaths:_perks/werewoof


# Harm by Iron
execute if block ~ ~ ~ #goldpaths:hurts_werewoof unless predicate goldark:input/sneak run damage @s 2 on_fire
execute if block ~ ~-0.1 ~ #goldpaths:hurts_werewoof unless predicate goldark:input/sneak run damage @s 1 on_fire

execute if items entity @s weapon.* #goldpaths:hurts_werewoof run effect give @s weakness 3 2
execute if items entity @s armor.* #goldpaths:hurts_werewoof run damage @s 2 in_fire


## Force-transform on a Full Moon (requires config)
execute if data storage goldark:settings { werewoof_force_transform: true } \
        if score #goldark_moon_phase goldark.dummy matches 0 if entity @s[tag=!goldpaths.is_transformed] \
        if predicate goldark:location/can_see_sky unless predicate goldark:location/is_daytime run function goldpaths:werewoof/utils/transform