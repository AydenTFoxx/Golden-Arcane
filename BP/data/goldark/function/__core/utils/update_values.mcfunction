## * AydenTFoxx @ 2025-07-06
## * 
## * Updates global variables, then sets this function to be repeated after a certain delay.


##? GLOBAL VALUES
# Values which must be updated moderately often; For usage by relevant modules.

# Moon Phase
execute store result score #goldark_moon_phase goldark.dummy run time query day
scoreboard players operation #goldark_moon_phase goldark.dummy %= #goldark_moon_operator goldark.dummy


## Schedule update
schedule function goldark:__core/utils/update_values 200t