## * AydenTFoxx @ 2025-04-04 .. 2025-06-18
## * 
## * Executes the datapack's behaviors at a custom tick rate.


##? GLOBAL VALUES
# Values which must be updated every tick; For usage by relevant modules.

##// Daytime (superseded by predicate "goldark:location/is_daytime")
#//execute store result score #goldark_daytime goldark.dummy run time query daytime


##? GOLDARK CLOCK
# The core and heart of Golden Arcane's update execution.

# Tick GOLDARK Clock
scoreboard players add $goldark_tick goldark.dummy 1

# Functions are run based on priority and rate of execution
execute if score $goldark_tick goldark.dummy >= #goldark_tick_rate goldark.dummy run function #goldark:tick_rated

# Reset GOLDARK Clock
execute if score $goldark_tick goldark.dummy >= #goldark_tick_rate goldark.dummy run scoreboard players set $goldark_tick goldark.dummy 0