## * AydenTFoxx @ 2025-07-06
## * 
## * Grants/revokes all unique traits of the Werewoof path.


## DISABLE

# Remove attribute modifiers
attribute @s[tag=goldpaths.perk_werewoof] attack_damage modifier remove goldpaths:werewoof_perk
attribute @s[tag=goldpaths.perk_werewoof] attack_knockback modifier remove goldpaths:werewoof_perk
attribute @s[tag=goldpaths.perk_werewoof] jump_strength modifier remove goldpaths:werewoof_perk
attribute @s[tag=goldpaths.perk_werewoof] knockback_resistance modifier remove goldpaths:werewoof_perk
attribute @s[tag=goldpaths.perk_werewoof] safe_fall_distance modifier remove goldpaths:werewoof_perk

# Display verbose message
execute if entity @s[tag=goldpaths.perk_werewoof] if data storage goldark:settings { verbose_mode: true } run function goldark:__core/utils/log_message { message: "Removed perk 'Werewoof' from player.", color: "gray" }

# Remove tag
execute if entity @s[tag=goldpaths.perk_werewoof] run return run tag @s remove goldpaths.perk_werewoof


## ENABLE

# Set attribute modifiers
attribute @s attack_damage modifier add goldpaths:werewoof_perk 2 add_value
attribute @s attack_knockback modifier add goldpaths:werewoof_perk 0.5 add_value
attribute @s jump_strength modifier add goldpaths:werewoof_perk 0.1 add_value
attribute @s knockback_resistance modifier add goldpaths:werewoof_perk 0.1 add_value
attribute @s safe_fall_distance modifier add goldpaths:werewoof_perk 2 add_value

# Add tag
tag @s add goldpaths.perk_werewoof

# Display verbose message
execute if data storage goldark:settings { verbose_mode: true } run function goldark:__core/utils/log_message { message: "Added perk 'Werewoof' to player.", color: "gray" }

# Return value
return 0