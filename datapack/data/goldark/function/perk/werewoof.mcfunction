## * Grants perks inherent to the Werewoof arcane path.
## *
## * Last modified: October 12th, 2026 (YNHZRFXN)


## DISABLE

# Remove attribute modifiers
attribute @s[tag=goldark.perk_werewoof] attack_damage modifier remove goldark:werewoof_perk
attribute @s[tag=goldark.perk_werewoof] attack_knockback modifier remove goldark:werewoof_perk
attribute @s[tag=goldark.perk_werewoof] jump_strength modifier remove goldark:werewoof_perk
attribute @s[tag=goldark.perk_werewoof] knockback_resistance modifier remove goldark:werewoof_perk
attribute @s[tag=goldark.perk_werewoof] safe_fall_distance modifier remove goldark:werewoof_perk

# Remove tag
execute if entity @s[tag=goldark.perk_werewoof] run return run tag @s remove goldark.perk_werewoof


## ENABLE

# Set attribute modifiers
attribute @s attack_damage modifier add goldark:werewoof_perk 2 add_value
attribute @s attack_knockback modifier add goldark:werewoof_perk 0.5 add_value
attribute @s jump_strength modifier add goldark:werewoof_perk 0.1 add_value
attribute @s knockback_resistance modifier add goldark:werewoof_perk 0.1 add_value
attribute @s safe_fall_distance modifier add goldark:werewoof_perk 2 add_value

# Add tag
tag @s add goldark.perk_werewoof

# Return value
return 0