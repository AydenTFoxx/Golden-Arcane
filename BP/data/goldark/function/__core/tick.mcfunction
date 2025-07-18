## * AydenTFoxx @ 2025-04-04 .. 2025-07-10
## * 
## * Executes the datapack's behaviors at a custom tick rate.


##? WORLD EVENTS
# Functions which are run on particular events, which cannot be otherwise be tested with advancements.

#* On Player Death
execute as @a[scores={ goldark.deaths_player=1.. }, tag=!goldark.is_dead] run function goldark:__core/events/on_player_death

#* On Player Respawn
execute as @a[tag=goldark.is_dead] at @s if score @s goldark.health_player matches 1.. run tag @s remove goldark.is_dead


##? GOLDARK CLOCK
# The core and heart of Golden Arcane's update execution.

## Ignore if datapack is disabled
execute if data storage goldark:settings { benchmark: true } run return fail


# Tick GOLDARK Clock
scoreboard players add $goldark_tick_i goldark.dummy 1
scoreboard players add $goldark_tick_ii goldark.dummy 1

# Functions are run in turns, lessening overload on the server.
execute if score $goldark_tick_i goldark.dummy matches 1 run function goldark:update_a
execute if score $goldark_tick_i goldark.dummy matches 2 run function goldark:update_b
execute if score $goldark_tick_ii goldark.dummy matches 4 run function goldark:update_c

# Reset GOLDARK Clock
execute if score $goldark_tick_i goldark.dummy matches 2.. run scoreboard players set $goldark_tick_i goldark.dummy 0
execute if score $goldark_tick_ii goldark.dummy matches 4.. run scoreboard players set $goldark_tick_ii goldark.dummy 0