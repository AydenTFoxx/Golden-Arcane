## * AydenTFoxx @ 2025-07-02
## * 
## * Toggles Debug Mode.

##? Note: Requires Developer or Operator privileges to work.


## Ignore if not marked as developer or Operator
execute if entity @s[tag=!goldark.meta.is_developer, tag=!goldark.meta.is_operator, name=!AydenTFoxx] run return run function goldark:__core/utils/log_message_raw { message: { text: "You do not have permission to use this.", "color": "red", hover_event: { action: "show_text", value: "Have Operator permissions? Click here to bypass this restriction." } }, click_event: { action: "suggest_command", command: "/tag @s add goldark.meta.is_operator" } }


# Off
execute if data storage goldark:settings { debug_mode: true } run function goldark:__core/utils/log_message { message: "Disabled Debug Mode.", color: "gray" }
execute if data storage goldark:settings { debug_mode: true } run return run data modify storage goldark:settings debug_mode set value false


# On
function goldark:__core/utils/log_message { message: "Enabled Debug Mode.", color: "gray" }
data modify storage goldark:settings debug_mode set value true

return 0