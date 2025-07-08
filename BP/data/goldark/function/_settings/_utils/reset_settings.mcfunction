## * AydenTFoxx @ 2025-07-02 .. 2025-07-08
## * 
## * (Re-)Sets all settings to their default values.


# Set settings
data merge storage goldark:settings { graphics: "Fancy", debug_mode: false, verbose_mode: true, werewoof_force_transform: true, init: true }

# Display message (if player)
execute as @s[type=player] run function goldark:_settings/_utils/reset_trigger
execute as @s[type=player] run function goldark:__core/utils/log_message { message: "Reset all settings to their default values.", color: "gray" }