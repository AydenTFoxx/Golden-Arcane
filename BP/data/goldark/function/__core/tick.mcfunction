## * AydenTFoxx @ 2025-04-04 .. 2025-07-02
## * 
## * Executes the datapack's behaviors at a custom tick rate.


##? GLOBAL VALUES
# Values which must be updated every tick; For usage by relevant modules.

##// Daytime (superseded by predicate "goldark:location/is_daytime")
#//execute store result score #goldark_daytime goldark.dummy run time query daytime


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