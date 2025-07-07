## * AydenTFoxx @ 2025-04-04 .. 2025-07-06
## * 
## * Loads all required features for the datapack's functioning.


## Ignore until players are loaded
execute unless entity @p run return run schedule function goldark:__core/load 20t


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

## Magic Energy (goldark)
# A dedicated meter for a player's "magic energy" capacity. Used as a "cost" for every spell.
scoreboard objectives add goldark.mana dummy { text: "Mana", color: "light_purple" }


## True Health (goldark)
# A read-only meter of player health. Used in predicates and for special abilities.
scoreboard objectives add goldark.health_player health { text: "Health (Player)", color: "dark_red" }


## Settings (goldark)
# A trigger objective for managing Golden Arcane's settings without Operator privileges.
scoreboard objectives add goldark.settings trigger { text: "GOLDARK Settings", color: "yellow" }


##? FLAGS & VALUES

## Initialize default settings
execute unless data storage goldark:settings { init: true } run function goldark:_settings/_utils/reset_settings


# Set initial GUID
execute unless score #goldark_guid goldark.guid matches 1.. run scoreboard players set #goldark_guid goldark.guid 1

# Set modulus operator for Moon phase calculation
execute unless score #goldark_moon_operator goldark.dummy matches 1.. run scoreboard players set #goldark_moon_operator goldark.dummy 8


## Initialize value updater
function goldark:__core/utils/update_values

## Enable settings trigger for all online players
scoreboard players enable @a goldark.settings


##? VERSIONING

## Set internal versioning
scoreboard players set #goldark_target_version goldark.dummy 5

## Update versioning
execute unless score #goldark_version goldark.dummy = #goldark_target_version goldark.dummy run function goldark:__core/utils/update_version