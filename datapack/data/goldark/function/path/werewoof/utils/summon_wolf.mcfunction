## * AydenTFoxx @ 2025-07-17
## *
## * Sets the Wolf form's data and inherited properties from the player.


# Set Wolf data
data merge entity @s { Health: 20.0f, PortalCooldown: 20s, PersistenceRequired: 1b, Tags: [ goldark.morph_werewoof, goldark.is_morph, goldark.is_werewoof ], attributes: [ { id: "armor", base: 8.0 }, { id: "armor_toughness", base: 8.0 }, { id: "attack_damage", base: 4.0 }, { id: "attack_knockback", base: 0.5 }, { id: "fall_damage_multiplier", base: 0.8 }, { id: "jump_strength", base: 0.5 }, { id: "knockback_resistance", base: 0.2 }, { id: "max_health", base: 8.0, modifiers: [ { id: "goldark:path/werewoof/wolf_health", amount: 12.0, operation: "add_value" } ] }, { id: "movement_speed", base: 0.25 }, { id: "scale", base: 1.5 } ], Age: 99999 }


# Inherit properties from player
data modify entity @s active_effects set from entity @p[tag=goldark.is_werewoof, tag=!goldark.is_transformed, distance=..1] active_effects
data modify entity @s fall_distance set from entity @p[tag=goldark.is_werewoof, tag=!goldark.is_transformed, distance=..1] fall_distance
data modify entity @s Health set from entity @p[tag=goldark.is_werewoof, tag=!goldark.is_transformed, distance=..1] Health
data modify entity @s Rotation set from entity @p[tag=goldark.is_werewoof, tag=!goldark.is_transformed, distance=..1] Rotation

# Inherit Golden Arcane-specific effects
scoreboard players operation @n[type=wolf, tag=goldark.morph_werewoof, distance=0] goldark.effect_timer.holy_sickness = @s goldark.effect_timer.holy_sickness
scoreboard players operation @n[type=wolf, tag=goldark.morph_werewoof, distance=0] goldark.effect_timer.holy_numbness = @s goldark.effect_timer.holy_numbness

# Inherit immunity, if any
execute if entity @s[tag=goldark.perk.holy_immune] run tag @n[type=wolf, tag=goldark.morph_werewoof, distance=0] add goldark.perk.holy_immune
execute if entity @s[gamemode=creative] run tag @n[type=wolf, tag=goldark.morph_werewoof, distance=0] add goldark.perk.holy_immune


# Get player name (with " [Wolf]" suffix)
summon text_display ~ ~ ~ { Tags: [ goldark.utils.custom_name ], text: [{ selector: "@p[tag=goldark.is_werewoof, tag=!goldark.is_transformed, distance=..1]" }, { text: " [Wolf]", color: "gray" }], view_range: 0 }

data modify entity @s CustomName set from entity @n[type=text_display, tag=goldark.utils.custom_name, distance=..1] text

kill @n[type=text_display, tag=goldark.utils.custom_name, distance=..1]


# Add Wolf effects
effect give @s regeneration infinite 1 true
effect give @s resistance infinite 1 true