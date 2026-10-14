## * AydenTFoxx @ 2025-07-08
## *
## * Revokes all paths of the player, if they have any.


# Reset trigger
advancement revoke @s only goldark:use_item/purity_totem

# Revoke Death if player has no paths
execute unless entity @s[tag=goldark.has_path] run return run effect clear @s


# Revoke Werewoof
execute if entity @s[tag=goldark.is_werewoof] run function goldark:tools/lycanthropy/cure

# Revoke Vempyre
execute if entity @s[tag=goldark.is_vempyre] run function goldark:tools/vempyrism/cure


# Apply debuffs
effect give @s nausea 15 0 true

# Display Purity effects
playsound block.portal.travel player @s ~ ~ ~ 1 0.8

particle flash{color:16777215} ~ ~1 ~


# Remove tag
tag @s[tag=goldark.has_path] remove goldark.has_path