## * AydenTFoxx @ 2025-06-26 .. 2025-07-08 .. 2025-07-10
## * 
## * Updates the datapack with applicable compatibility fixes for earlier versions.
## * 
## ? Note this is separate from the release version, which uses Semantic Versioning instead.


## FIXES

# [4 -> 5] Remove unused fake player
execute if score #goldark_version goldark.dummy matches 4 run scoreboard players reset #goldark_tick_rate goldark.dummy

# [5 -> 6] Update Werewoof settings
execute if score #goldark_version goldark.dummy matches 5 run data remove storage goldark:settings goldpaths


# Major release fixes will be here upon releasing the datapack.


## UPDATE

# Display notice
execute unless score #goldark_version goldark.dummy matches 1.. as @a run function goldark:__core/utils/log_message { message: { text: "Welcome to Golden Arcane.", color: "yellow" } }
execute if score #goldark_version goldark.dummy matches 1.. as @a run function goldark:__core/utils/log_message { message: { text: "Updated datapack successfully.", color: "white" } }

# Update internal version
scoreboard players operation #goldark_version goldark.dummy = #goldark_target_version goldark.dummy