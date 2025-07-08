## * AydenTFoxx @ 2025-07-02 .. 2025-07-08
## * 
## * Processes and executes the player's selected option in the settings menu panel.


## Add empty spacing
tellraw @s { text: "" }


##? TOGGLES

# Graphics
execute if score @s goldark.settings matches 1001 run function goldark:_settings/toggle/graphics

# Werewoof Force Tranformation
execute if score @s goldark.settings matches 1002 run function goldark:_settings/toggle/werewoof_force_transform


# Debug Mode
execute if score @s goldark.settings matches 2001 run function goldark:_settings/toggle/debug_mode

# Verbose Mode
execute if score @s goldark.settings matches 2002 run function goldark:_settings/toggle/verbose_mode


##? ACTIONS

# Reset All Settings
execute if score @s goldark.settings matches 9999 run function goldark:_settings/_utils/reset_settings


##? OTHER

## Refresh settings menu panel
execute if score @s goldark.settings matches 1.. run tellraw @s { text: "" }
execute if score @s goldark.settings matches 1.. run return run function goldark:_settings/_menu with storage goldark:settings