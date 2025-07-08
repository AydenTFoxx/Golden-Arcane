## * AydenTFoxx @ 2025-07-08
## * 
## * Toggles Werewoof Force Transformation.


# Off
execute if data storage goldark:settings { werewoof_force_transform: true } run function goldark:__core/utils/log_message { message: "Disabled Forced Transformation.", color: "gray" }
execute if data storage goldark:settings { werewoof_force_transform: true } run return run data modify storage goldark:settings werewoof_force_transform set value false


# On
function goldark:__core/utils/log_message { message: "Enabled Forced Transformation.", color: "gray" }
data modify storage goldark:settings werewoof_force_transform set value true

return 0