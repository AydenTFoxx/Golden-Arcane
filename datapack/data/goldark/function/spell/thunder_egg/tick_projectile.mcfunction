## * Displays a particle trail and summons a thunderous event upon colliding with the floor.
## *
## * Last modified: January 23rd, 2025 (AydenTFoxx)


## Any

# Teleport to Egg
execute at @n[type=egg, tag=goldark.dummy_magic.thunder_egg, distance=..3] facing entity @p eyes run tp @s ^ ^ ^-2
execute unless entity @n[type=egg, tag=goldark.dummy_magic.thunder_egg, distance=..3] \
        at @n[type=egg, tag=goldark.dummy_magic.thunder_egg, distance=..8] facing entity @p eyes run tp @s ^ ^ ^-2

# Display trail particle
particle electric_spark ~ ~ ~ .05 .05 .05 0.1 5


## Thunderous Egg

# Summon Storm
execute if entity @s[tag=goldark.dummy_magic.thunder_egg_strong] \
        unless entity @n[type=egg, tag=goldark.dummy_magic.thunder_egg, distance=..3] \
        positioned ~ ~8 ~ \
        run return run function goldark:spell/thunder_egg/init_storm

## Thunder Egg

# Tick cooldown
scoreboard players add @s goldark.ability_timer 1

# Summon lightning
execute unless entity @n[type=egg, tag=goldark.dummy_magic.thunder_egg, distance=..3] \
        if score @s goldark.ability_timer matches 2.. \
        run function goldark:spell/thunder_egg/summon_thunder