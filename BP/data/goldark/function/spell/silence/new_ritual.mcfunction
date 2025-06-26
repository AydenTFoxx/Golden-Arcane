## * AydenTFoxx @ 2025-06-23 .. 2025-06-25
## * 
## * Invokes a new Silence spell with its respective ritual.


## Ignore if no valid player is found
execute unless entity @p[distance=..8, level=1..] run return fail


# Tick timer
scoreboard players add @s goldark.ability_timer 1

# Rotate self
rotate @s ~10 ~


# Play trigger sound
execute if score @s goldark.ability_timer matches 1 run playsound ambient.soul_sand_valley.mood block @a[distance=..16] ~ ~ ~ 1 0.8

# Display summoning particles
particle white_smoke ^ ^0.1 ^0.5 0.0 0.0 0.0 0.05 1
particle white_smoke ^ ^0.1 ^-0.5 0.0 0.0 0.0 0.05 1

particle note ^ ^0.5 ^ 0.1 0.1 0.1 0.5 1

execute if score @s goldark.ability_timer matches 80.. run particle enchant ~ ~0.5 ~ 0.0 0.1 0.0 0.8 2


## Ignore until delay
execute unless score @s goldark.ability_timer matches 120.. run return fail


# Summon Spell
function goldark:spell/silence/new

# Consume EXP
xp add @p[level=1.., distance=..8] -5 points

# Display feedback to player
execute at @p[level=1.., distance=..8] run particle small_gust ~ ~1 ~ 0.0 0.0 0.0 1 1
execute at @p[level=1.., distance=..8] run playsound entity.experience_orb.pickup block @s ~ ~ ~ 1 0.5


# Display final particles
particle flash ~ ~0.5 ~ 0.0 0.0 0.0 1.0 1
particle reverse_portal ~ ~0.5 ~ 0.0 0.1 0.0 0.8 8

# Play summoning sound
playsound block.sculk.break block @a[distance=..16] ~ ~ ~ 1 0.6


# Remove self
kill @s[type=item]