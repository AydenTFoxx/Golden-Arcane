## * AydenTFoxx @ 2025-07-02 .. 2025-07-10
## * 
## * (Re-)Sets all settings to their default values.


# Set settings
data merge storage goldark:settings { graphics: "Fancy", debug_mode: false, verbose_mode: true, werewoof_force_transform: true, init: true }

# Set teams
team add goldpaths.werewoof { text: "Werewoof", color: "gray" }

team modify goldpaths.werewoof seeFriendlyInvisibles false
team modify goldpaths.werewoof suffix { text: " [Wolf]", color: "gray" }


# Display message (if player)
execute as @s[type=player] run function goldark:_settings/_utils/reset_trigger
execute as @s[type=player] run function goldark:__core/utils/log_message { message: { text: "Reset all settings to their default values.", color: "gray" } }