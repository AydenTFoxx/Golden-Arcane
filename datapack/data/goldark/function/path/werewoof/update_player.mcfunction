## * AydenTFoxx @ 2025-07-05 .. 2025-07-10
## *
## * Updates the Werewoof user's behaviors and abilities.


##? ACTIONS

## Transformed: Control Wolf
execute if entity @s[tag=goldark.is_transformed] run return run function goldark:path/werewoof/update/wolf_controls

## Non-transformed: Grant player abilities
execute if entity @s[scores={ goldark.combo=1.. }] run function goldark:path/werewoof/update/player_controls

## Transform player
execute if predicate goldark:input/sprint if predicate goldark:input/backward run return run function goldark:path/werewoof/utils/transform


##? TRAITS

## Grant Werewoof Perk
execute if entity @s[tag=!goldark.perk_werewoof, tag=!goldark.is_dead] run function goldark:perk/werewoof

# Tick sickness
function goldark:path/werewoof/sickness


# Allow double jump (Player)
execute unless predicate goldark:entity/is_on_ground if predicate goldark:player_input/jump \
        unless score @s goldark.ability_timer matches 1.. unless score @s goldark.hunger_player matches ..8 \
        if block ~ ~-1.5 ~ #goldark:is_transparent run function goldark:path/werewoof/utils/double_jump

execute if entity @s[tag=goldark.werewoof.double_jump] run function goldark:path/werewoof/utils/double_jump