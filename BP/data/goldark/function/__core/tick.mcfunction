## * AydenTFoxx @ 2025-04-04 .. 2025-06-27
## * 
## * Executes the datapack's behaviors at a custom tick rate.


##? GLOBAL VALUES
# Values which must be updated every tick; For usage by relevant modules.

##// Daytime (superseded by predicate "goldark:location/is_daytime")
#//execute store result score #goldark_daytime goldark.dummy run time query daytime


##? GOLDARK CLOCK
# The core and heart of Golden Arcane's update execution.

# Tick GOLDARK Clock
execute unless data storage goldark:settings { benchmark: true } run scoreboard players add $goldark_tick goldark.dummy 1

# Functions are run in turns, lessening overload on the server.
execute if score $goldark_tick goldark.dummy matches 1 run function goldark:update_a
execute if score $goldark_tick goldark.dummy matches 2 run function goldark:update_b

# Reset GOLDARK Clock
execute if score $goldark_tick goldark.dummy matches 2 run scoreboard players set $goldark_tick goldark.dummy 0