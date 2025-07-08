## * AydenTFoxx @ 2025-07-05 .. 2025-07-07
## * 
## * Updates the Werewoof user's behaviors and abilities.


##? TRAITS

## Grant Werewoof Perk
execute if entity @s[tag=!goldpaths.perk_werewoof] unless data entity @s { Health: 0.0f } run function goldpaths:_perks/werewoof


# Harm by Iron
execute if block ~ ~ ~ #goldpaths:hurts_werewoof unless predicate goldark:input/sneak run damage @s 2 on_fire
execute if block ~ ~-0.1 ~ #goldpaths:hurts_werewoof unless predicate goldark:input/sneak run damage @s 1 on_fire

execute if items entity @s weapon.* #goldpaths:hurts_werewoof run effect give @s weakness 3 2
execute if items entity @s armor.* #goldpaths:hurts_werewoof run damage @s 2 in_fire


## Force-transform on a Full Moon (requires config)
execute if data storage goldark:settings { goldpaths: { werewoof_force_transform: true } } \
        if score #goldark_moon_phase goldark.dummy matches 0 if entity @s[tag=!goldpaths.is_transformed] \
        if predicate goldark:location/can_see_sky unless predicate goldark:location/is_daytime run function goldpaths:werewoof/utils/transform


##? ACTIONS

## Transform player
execute if entity @s[tag=!goldpaths.is_transformed] if predicate goldark:input/sprint if predicate goldark:input/backward run return run function goldpaths:werewoof/utils/transform

## Ignore if non-transformed
execute unless entity @s[tag=goldpaths.is_transformed] run return fail

## Force de-transform players without a Wolf
execute unless function goldpaths:__utils/is_same_guid run return run function goldpaths:werewoof/utils/revert


# Display Wolf health
title @s actionbar { translate: "%s Health: %s", color: "gray", with: [ { selector: "@n[type=wolf, tag=goldpaths.morph_werewoof, distance=..2]" }, { entity: "@n[type=wolf, tag=goldpaths.morph_werewoof, distance=..2]", nbt: "Health", color: "red" } ] }

# Heal player
execute if data entity @n[type=wolf, tag=goldpaths.is_werewoof, distance=..1] { Health: 20.0f } if score @s goldark.health_player matches ..19 run effect give @s regeneration 13 2


# Rotate wolf as player
execute if predicate goldark:input/any_directional run rotate @n[type=wolf, tag=goldpaths.is_werewoof, distance=..1] facing ^ ^ ^4

# Jump as Wolf
execute if predicate goldark:input/jump as @n[type=wolf, tag=goldpaths.is_werewoof, distance=..1] if data entity @s { OnGround: 1b } run data modify entity @s Motion[1] set value 0.4

# Move Wolf
execute if predicate goldark:input/forward as @n[type=wolf, tag=goldpaths.is_werewoof, distance=..1] at @s unless block ~ ~-0.5 ~ #air align y if block ^ ^ ^0.4 #goldark:is_breathable run tp @s ^ ^ ^0.4 facing ^ ^ ^4
execute if predicate goldark:input/backward as @n[type=wolf, tag=goldpaths.is_werewoof, distance=..1] at @s unless block ~ ~-0.5 ~ #air align y if block ^ ^ ^-0.4 #goldark:is_breathable run tp @s ^ ^ ^-0.4

execute if predicate goldark:input/left run rotate @n[type=wolf, tag=goldpaths.is_werewoof, distance=..1] ~-12 ~
execute if predicate goldark:input/right run rotate @n[type=wolf, tag=goldpaths.is_werewoof, distance=..1] ~12 ~


## De-transform player
execute if predicate goldark:input/sneak run function goldpaths:werewoof/utils/revert