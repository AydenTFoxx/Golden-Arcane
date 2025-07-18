## * AydenTFoxx @ 2025-07-02 .. 2025-07-10
## * 
## * Enables the "goldark.settings" trigger objective for the player.


# Revoke advancement trigger
advancement revoke @s only goldark:use_item/trigger_settings


# Attempt to enable settings trigger
execute store success score @s goldark.dummy run scoreboard players enable @s goldark.settings


# Display message
execute if score @s goldark.dummy matches 1 run function goldark:__core/utils/log_message { message: { translate: "Enabled settings for %s.", with: [ { selector: "@s", color: "yellow" } ] } }

execute if score @s goldark.dummy matches 0 run function goldark:__core/utils/log_message { message: { text: "You already have settings enabled.", color: "red" } }


# Reset data
scoreboard players reset @s goldark.dummy