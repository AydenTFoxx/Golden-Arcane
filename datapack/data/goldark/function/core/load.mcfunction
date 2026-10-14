## * Creates scoreboards and value holders for usage by Golden Arcane's features.
## *
## * Last modified: October 12th, 2026 (YNHZRFXN)

## Ignore until players are loaded
execute unless entity @p run return run schedule function goldark:core/load 20t


##? SCOREBOARDS

## [Import from load_effects] (goldark)
function goldark:core/load_effects

## [Import from load_levels] (goldark)
function goldark:core/load_levels

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

## Artifact Cooldown (goldark)
# A dedicated timer for cooldowns from using artifact items.
scoreboard objectives add goldark.artifact_cooldown dummy { text: "Artifact Cooldown", color: "dark_purple" }

## Health (goldark)
# A dedicated meter for mob health. May be used for custom entities' health, or for manipulating a mob's Health NBT value.
scoreboard objectives add goldark.health dummy { text: "Health", color: "red" }

## GUID (goldark)
# A dedicated counter for identifying creatures. Each GUID is generated on the fly, and is not retrieved if its owner dies.
scoreboard objectives add goldark.guid dummy { text: "GUID", color: "yellow" }

## Magic Energy (goldark)
# A dedicated meter for a player's "magic energy" capacity. Used as a "cost" for every spell.
scoreboard objectives add goldark.mana dummy { text: "Mana", color: "light_purple" }

## Combo (goldark)
# A dedicated counter for measuring combo actions. Used by the Werewoof Path to grant abilities to the player.
scoreboard objectives add goldark.combo dummy { text: "Combo", color: "green" }

## Combo Timer (goldark)
# A dedicated timer for measuring how long a combo will last. When the score reaches 0, the combo is lost.
scoreboard objectives add goldark.combo_timer dummy { text: "Combo Timer", color: "dark_green" }


## Player Health (goldark)
# A read-only meter of player health. Used in predicates and for special abilities.
scoreboard objectives add goldark.health_player health { text: "Health (Player)", color: "dark_red" }

## Player Deaths (goldark)
# A game-provided counter of a player's number of deaths. Used for revoking Perks and effects on death.
scoreboard objectives add goldark.deaths_player deathCount { text: "Deaths (Player)", color: "dark_gray" }

## Player Hunger (goldark)
# Stores a player's hunger level. Used for stamina-based abilities, e.g. Werewoof's double jump.
scoreboard objectives add goldark.hunger_player food


## Used Item: Egg (goldark)
# Triggers whenever an Egg is thrown; Used for triggering Thunder Egg's mechanic.
scoreboard objectives add goldark.used_item.egg minecraft.used:egg { "text": "Used: Egg", "color": "gray" }

## Used Item: Snowball (goldark)
# Triggers whenever a Snowball is thrown; Used for triggering the Pig Cannon.
scoreboard objectives add goldark.used_item.snowball minecraft.used:snowball { "text": "Used: Snowball", "color": "gray" }


##? FLAGS & VALUES

# Set initial GUID
execute unless score #goldark_guid goldark.guid matches 1.. run scoreboard players set #goldark_guid goldark.guid 1

# Set modulus operator for Moon phase calculation
execute unless score #goldark_moon_operator goldark.dummy matches 1.. run scoreboard players set #goldark_moon_operator goldark.dummy 8


##? SETTINGS

# Set GoldArk Tick Rate to default
execute unless score #goldark_tick_rate goldark.dummy matches 1.. \
    run scoreboard players set #goldark_tick_rate goldark.dummy 2


# Sets Golden Arcane's difficulty to the world's difficulty equivalent.
# DARK Mode is regarded as Hard Mode-equivalent for this purpose.
execute store result score $goldark_diff_reload goldark.dummy run difficulty

execute unless score $goldark_diff goldark.dummy matches 4 store result score $goldark_diff goldark.dummy run difficulty
execute if score $goldark_diff goldark.dummy matches 4 unless score $goldark_diff_reload goldark.dummy matches 3 store result score $goldark_diff goldark.dummy run difficulty


##? VERSIONING

## Set internal versioning
scoreboard players set #goldark_target_version goldark.dummy 8

## Update versioning
execute unless score #goldark_version goldark.dummy = #goldark_target_version goldark.dummy run function goldark:core/utils/update_version