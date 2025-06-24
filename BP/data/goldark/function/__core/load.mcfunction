## * AydenTFoxx @ 2025-04-04 .. 2025-06-18
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


## Ambience (goldark)
# A dedicated clock for ambient features, such as sounds, particles and similar effects.
scoreboard objectives add goldark.ambience dummy { text: "Ambience", color: "green" }

## Health (goldark)
# A dedicated meter for mob health. May be used for custom entities' health, or for manipulating a mob's Health NBT value.
scoreboard objectives add goldark.health dummy { text: "Health", color: "red" }

## GUID (goldark)
# A dedicated counter for identifying creatures. Each GUID is generated on the fly, and is not retrieved if its owner dies.
scoreboard objectives add goldark.guid dummy { text: "GUID", color: "yellow" }


## True Health (goldark)
# A read-only meter of player health. Used in predicates and for special abilities.
scoreboard objectives add goldark.health_player health { text: "Health (Player)", color: "dark_red" }


##? FLAGS & VALUES

# [...]


# Set datapack tick rate
execute unless score #goldark_tick_rate goldark.dummy matches 1.. run scoreboard players set #goldark_tick_rate goldark.dummy 2

# Set initial GUID
execute unless score #goldark_guid goldark.guid matches 1.. run scoreboard players set #goldark_guid goldark.guid 1