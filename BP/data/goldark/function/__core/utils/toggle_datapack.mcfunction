## * AydenTFoxx @ 2025-07-03 .. 2025-07-10
## * 
## * Enables/Disables the datapack globally.

##? Debug Function: Not for regular gameplay usage.

##! Note: Remove this before a full release!


# Revoke trigger
advancement revoke @s only goldark:use_item/toggle_datapack


## ENABLE

execute if data storage goldark:settings { benchmark: true } as @a run function goldark:__core/utils/log_message { message: { text: "Datapack enabled; Spells, effects and other features will resume their usual behavior.", color: "white" } }
execute if data storage goldark:settings { benchmark: true } run return run data remove storage goldark:settings benchmark


## DISABLE

execute as @a run function goldark:__core/utils/log_message { message: { text: "Datapack disabled; All behaviors are disabled and most features cannot be interacted with.", color: "white" } }

data modify storage goldark:settings benchmark set value true

return 0