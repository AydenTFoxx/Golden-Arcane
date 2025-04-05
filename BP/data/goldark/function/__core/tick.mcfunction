## * AydenTFoxx @ 2025-04-04
## * 
## * Executes the datapack's behaviors at a custom tick rate.

## ? Functions are tagged according to how often they must be run to operate properly.
## ? As a rule of thumb, if a function does not require extreme precision, tick-rated is to be preferred.


## ALWAYS RUN

# Functions here are run every game tick
#function #goldark:tick_always


## GOLDARK CLOCK

# Tick GOLDARK Clock
scoreboard players add #goldark_tick goldark.dummy 1

# Functions here are run every GOLDARK tick (based on #goldark_tick_rate)
execute if score #goldark_tick goldark.dummy = #goldark_tick_rate goldark.dummy run function #goldark:tick_rated

# Reset GOLDARK Clock
execute if score #goldark_tick goldark.dummy >= #goldark_tick_rate goldark.dummy run scoreboard players set #goldark_tick goldark.dummy 0