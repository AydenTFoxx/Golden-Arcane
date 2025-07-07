## * AydenTFoxx @ 2025-06-26 .. 2025-07-07
## * 
## * Updates the datapack with applicable compatibility fixes for earlier versions.
## * 
## ? Note this is separate from the release version, which uses Semantic Versioning instead.


## FIXES

# [4 -> 5] Remove unused fake player
scoreboard players reset #goldark_tick_rate goldark.dummy


# Major release fixes will be here upon releasing the datapack.


## UPDATE

# Update internal version
scoreboard players operation #goldark_version goldark.dummy = #goldark_target_version goldark.dummy

# Display notice
execute if data storage goldark:settings { verbose_mode: true } as @a run function goldark:__core/utils/log_message { message: "Updated datapack successfully.", color: "white" }