## * AydenTFoxx @ 2025-04-04
## * 
## * Runs behaviors for the Luminance Wisp custom entity.
## * 
## * The creature itself has no behavior other than providing light;
## * When its player is no longer in the same position, the Wisp (and light) is removed.


# Tick timer
execute unless score @s goldark.ability_timer matches 200.. run scoreboard players add @s goldark.ability_timer 1

# Replace Air with Light
execute if block ~ ~ ~ #air run setblock ~ ~ ~ light strict


# Remove Light on expiration
execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ light \
        unless entity @p[tag=goldark.effect.luminance, distance=..1] run setblock ~ ~ ~ air

# Remove self
execute align xyz positioned ~0.5 ~0.5 ~0.5 if score @s goldark.ability_timer matches 100.. \
        unless entity @p[tag=goldark.effect.luminance, distance=..1] run kill @s