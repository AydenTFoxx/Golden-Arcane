## * AydenTFoxx @ 2025-06-26 .. 2025-07-01S
## * 
## * Updates the datapack with applicable compatibility fixes for earlier versions.
## * 
## ? Note this is separate from the release version, which uses Semantic Versioning instead.


## Ignore until players are loaded
execute unless entity @p run return run schedule function goldark:__core/utils/update_version 20t


## FIXES

#? [3] -> Rename "Magic Lock" and "Warp Gate" to "Ward" and "Warp", respectively

execute if entity @n[type=marker, tag=goldark.entity.magic_lock] as @a run function goldark:__core/utils/log_message { message: "Renamed: Magic Lock -> Ward Spell", color: "gray" }
tag @e[type=marker, tag=goldark.entity.magic_lock] add goldark.entity.spell_lock
tag @e[type=marker, tag=goldark.entity.magic_lock] remove goldark.entity.magic_lock

execute if entity @n[type=interaction, tag=goldark.entity.warp_gate] as @a run function goldark:__core/utils/log_message { message: "Renamed: Warp Gate -> Warp Spell", color: "gray" }
tag @e[type=interaction, tag=goldark.entity.warp_gate] add goldark.entity.spell_gate
tag @e[type=interaction, tag=goldark.entity.warp_gate] remove goldark.entity.warp_gate

#? [4] -> Add "goldark.is_spell" to existing Spell entities
execute if entity @n[type=marker, tag=goldark.entity.spell_gate, tag=!goldark.is_spell] as @a run function goldark:__core/utils/log_message { message: "Added \\\"goldark.is_spell\\\" tag to Warp Spell", color: "gray" }
execute if entity @n[type=marker, tag=goldark.entity.spell_lock, tag=!goldark.is_spell] as @a run function goldark:__core/utils/log_message { message: "Added \\\"goldark.is_spell\\\" tag to Ward Spell", color: "gray" }
execute if entity @n[type=marker, tag=goldark.entity.spell_silence, tag=!goldark.is_spell] as @a run function goldark:__core/utils/log_message { message: "Added \\\"goldark.is_spell\\\" tag to Silence Spell", color: "gray" }
execute if entity @n[type=marker, tag=goldark.entity.spell_smite, tag=!goldark.is_spell] as @a run function goldark:__core/utils/log_message { message: "Added \\\"goldark.is_spell\\\" tag to Smite Spell", color: "gray" }

tag @e[type=marker, tag=goldark.entity.spell_gate, tag=!goldark.is_spell] add goldark.is_spell
tag @e[type=marker, tag=goldark.entity.spell_lock, tag=!goldark.is_spell] add goldark.is_spell
tag @e[type=marker, tag=goldark.entity.spell_silence, tag=!goldark.is_spell] add goldark.is_spell
tag @e[type=marker, tag=goldark.entity.spell_smite, tag=!goldark.is_spell] add goldark.is_spell


## UPDATE

# Update internal version
scoreboard players operation #goldark_version goldark.dummy = #goldark_target_version goldark.dummy

# Display notice
execute as @a run function goldark:__core/utils/log_message { message: "Updated datapack successfully.", color: "white" }