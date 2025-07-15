## * AydenTFoxx @ 2025-04-04 .. 2025-07-10
## * 
## * Runs behaviors for the Luminance Wisp custom entity.
## * 
## * The creature itself has no behavior other than providing light;
## * When its player is no longer in the same position, the Wisp (and light) is removed.


# Tick timer
execute unless score @s goldark.ability_timer matches 20.. run scoreboard players add @s goldark.ability_timer 1

# Replace Air with Light
execute if block ~ ~ ~ #air run setblock ~ ~ ~ light strict


##? Debug: Display position
execute if data storage goldark:settings { debug_mode: true } run particle electric_spark ~ ~ ~ 0.0 0.0 0.0 0.0 1 force


# Remove Light on expiration
execute positioned ~ ~-1 ~ unless entity @p[tag=goldark.effect.luminance, distance=..1] \
        positioned ~ ~1 ~ if block ~ ~ ~ light run setblock ~ ~ ~ air

# Remove self
execute if score @s goldark.ability_timer matches 10.. positioned ~ ~-1 ~ \
        unless entity @p[tag=goldark.effect.luminance, distance=..1] run kill @s