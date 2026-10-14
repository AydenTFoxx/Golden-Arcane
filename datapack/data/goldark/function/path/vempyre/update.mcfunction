## * Runs Vempyre-specific code and behaviors.
## *
## * Last modified: January 26th, 2024 (AydenTFoxx)


## PERKS

# Vempyre
execute unless score @s goldark.effect_timer.holy_sickness matches 200.. \
        if entity @s[tag=!goldark.perk.vempyre, tag=!goldark.effect.purity, scores={ goldark.health_player=1.. }] run function goldark:perk/vempyre

execute if score @s goldark.effect_timer.holy_sickness matches 200.. \
        if entity @s[tag=goldark.perk.vempyre, tag=!goldark.effect.purity, scores={ goldark.health_player=1.. }] run function goldark:perk/vempyre


## BEHAVIOR

# Burn in sunlight
execute if predicate goldark:location/is_under_sunlight unless score #goldark_time_day goldark.dummy matches 12600..23500 \
        if entity @s[tag=!goldark.vempyre.skill_shroud, tag=!goldark.save_gamemode.creative, tag=!goldark.save_gamemode.spectator, tag=!goldark.perk.holy_immune] \
        unless score @s goldark.effect_timer.holy_numbness matches 1.. unless score @s goldark.path_level.vempyre matches 3.. unless entity @s[gamemode=creative] \
        run function goldark:path/vempyre/sunlight


# Skill: Heal
execute if predicate goldark:player_input/sprint if predicate goldark:player_input/sneak if predicate goldark:player_input/backward \
        if score @s goldark.ability_clock matches 20.. unless score @s goldark.ability_timer matches 1.. \
        run function goldark:path/vempyre/skills/heal

# Skill: Lunge
execute if predicate goldark:player_input/sprint if predicate goldark:player_input/sneak if predicate goldark:player_input/forward \
        if score @s goldark.ability_clock matches 10.. unless score @s goldark.ability_timer matches 1.. \
        run function goldark:path/vempyre/skills/lunge/init

# Skill: Shroud
execute if predicate goldark:player_input/sprint if predicate goldark:player_input/sneak if predicate goldark:player_input/left if predicate goldark:player_input/right \
        if score @s goldark.ability_clock matches 80.. unless score @s goldark.ability_timer matches 1.. \
        run function goldark:path/vempyre/skills/shroud/init


# Tick skills
execute if entity @s[tag=goldark.vempyre.skill_lunge] run function goldark:path/vempyre/skills/lunge/tick
execute if entity @s[tag=goldark.vempyre.skill_shroud] run function goldark:path/vempyre/skills/shroud/tick

# Display blood meter (after Heal)
execute if entity @s[tag=goldark.temp.display_blood, scores={ goldark.ability_timer=20 }] run function goldark:path/vempyre/display_blood
execute if entity @s[tag=goldark.temp.display_blood, scores={ goldark.ability_timer=20 }] run tag @s remove goldark.temp.display_blood


# Reduce cooldown Timer
scoreboard players remove @s[scores={ goldark.ability_timer=1.. }] goldark.ability_timer 1
scoreboard players reset @s[scores={ goldark.ability_timer=0 }] goldark.ability_timer


## B A T

# Transform into Bat
execute if entity @s[scores={ goldark.path_level.vempyre=2.., goldark.health_player=1.. }, predicate=goldark:player_input/sprint, predicate=goldark:player_input/backward, tag=!goldark.path_transformed] \
        unless score @s goldark.effect_timer.holy_sickness matches 100.. unless score @s goldark.ability_timer matches 1.. \
        run function goldark:path/vempyre/morph/transform

# Update Bat form
execute if entity @s[tag=goldark.path_transformed, tag=!goldark.morph_vempyre, scores={ goldark.path_level.vempyre=2.. }] run function goldark:path/vempyre/morph/update