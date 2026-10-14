## * AydenTFoxx @ 2025-07-06 .. 2026-10-12
## *
## * Retrieves the current moon phase, saving to a special scoreboard value.

# Moon Phase
execute store result score #goldark_moon_phase goldark.dummy run time query day
scoreboard players operation #goldark_moon_phase goldark.dummy %= #goldark_moon_operator goldark.dummy