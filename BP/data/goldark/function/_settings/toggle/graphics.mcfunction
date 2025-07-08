## * AydenTFoxx @ 2025-07-02
## * 
## * Toggles the Graphics mode between "Fast" and "Fancy".


# Fast
execute if data storage goldark:settings { graphics: "Fancy" } run function goldark:__core/utils/log_message_raw { message: { translate: "Changed graphics settings to %s.", with: [ { text: "Fast", color: "yellow" } ] } }
execute if data storage goldark:settings { graphics: "Fancy" } run return run data modify storage goldark:settings graphics set value "Fast"


# Fancy
function goldark:__core/utils/log_message_raw { message: { translate: "Changed graphics settings to %s.", with: [ { text: "Fancy", color: "yellow" } ] } }
data modify storage goldark:settings graphics set value "Fancy"

return 0