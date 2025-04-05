## * AydenTFoxx @ 2025-04-04
## * 
## * Loads all required features for the datapack's functioning.


##? SCOREBOARDS

## Ability Timer (goldark)
# A generic timer for time-limited features, like effects, cooldowns and active abilities.
scoreboard objectives add goldark.ability_timer dummy { text: "A. Timer", color: "aqua" }

## Ability Clock (goldark)
# A generic clock for time-dependant features, like custom behavior, animations, and passive abilities.
scoreboard objectives add goldark.ability_clock dummy { text: "A. Clock", color: "blue" }

## Dummy (goldark)
# A purposeless objective for usage by nearly any non-specialized function.
scoreboard objectives add goldark.dummy dummy { text: "Dummy", color: "gold" }


##? FLAGS

# [...]