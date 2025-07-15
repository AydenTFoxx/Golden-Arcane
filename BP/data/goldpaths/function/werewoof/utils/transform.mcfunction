## * AydenTFoxx @ 2025-07-05 .. 2025-07-10
## * 
## * Transforms the player into a Wolf form.


## Ignore if on cooldown
execute if score @s goldark.ability_timer matches 1.. run return fail


# Set cooldown (halved on a Full Moon)
execute unless score #goldark_moon_phase goldark.dummy matches 0 run scoreboard players set @s goldark.ability_timer 40
execute if score #goldark_moon_phase goldark.dummy matches 0 run scoreboard players set @s goldark.ability_timer 20

# Consume Mana (ignored on a Full Moon)
execute unless score #goldark_moon_phase goldark.dummy matches 0 run function goldark:spell/_utils/consume_mana { cost: 8 }


# Summon Wolf
summon wolf ~ ~ ~ { Health: 20.0f, PortalCooldown: 20s, PersistenceRequired: 1b, Tags: [ goldpaths.morph_werewoof, goldpaths.is_morph ], active_effects: [ { id: "regeneration", amplifier: 1, duration: -1, show_particles: false }, { id: "resistance", amplifier: 1, duration: -1, show_particles: false } ], attributes: [ { id: "armor", base: 8.0 }, { id: "armor_toughness", base: 8.0 }, { id: "attack_damage", base: 4.0 }, { id: "attack_knockback", base: 0.5 }, { id: "fall_damage_multiplier", base: 0.8 }, { id: "jump_strength", base: 0.5 }, { id: "knockback_resistance", base: 0.2 }, { id: "max_health", base: 8.0, modifiers: [ { id: "goldpaths:werewoof/wolf_health", amount: 12.0, operation: "add_value" } ] }, { id: "movement_speed", base: 0.25 }, { id: "scale", base: 1.5 } ], Team: "goldpaths.werewoof", Age: 99999 }

# Initialize player and Wolf's GUID
execute unless score @s goldark.guid matches 1.. run function goldark:spell/_utils/new_guid
scoreboard players operation @n[type=wolf, tag=goldpaths.morph_werewoof, tag=!goldpaths.is_werewoof, distance=..1] goldark.guid = @s goldark.guid

# Inherit properties from player
data modify entity @n[type=wolf, tag=goldpaths.morph_werewoof, tag=!goldpaths.is_werewoof, distance=..1] active_effects append from entity @s active_effects
data modify entity @n[type=wolf, tag=goldpaths.morph_werewoof, tag=!goldpaths.is_werewoof, distance=..1] fall_distance set from entity @s fall_distance
data modify entity @n[type=wolf, tag=goldpaths.morph_werewoof, tag=!goldpaths.is_werewoof, distance=..1] Health set from entity @s Health
data modify entity @n[type=wolf, tag=goldpaths.morph_werewoof, tag=!goldpaths.is_werewoof, distance=..1] Rotation set from entity @s Rotation

# Get player name
summon text_display run data merge entity @s { Tags: [ goldpaths.utils.custom_name ], text: [{ selector: "@p" }, { text: " [Wolf]", color: "gray" }], view_range: 0 }

data modify entity @n[type=wolf, tag=goldpaths.morph_werewoof, tag=!goldpaths.is_werewoof, distance=..1] CustomName set from entity @n[type=text_display, tag=goldpaths.utils.custom_name, distance=..1] text

kill @n[type=text_display, tag=goldpaths.utils.custom_name, distance=..1]


# Change own gamemode
function goldpaths:__utils/set_gamemode { gamemode: "spectator" }

# Spectate Wolf
spectate @n[type=wolf, tag=goldpaths.morph_werewoof, tag=!goldpaths.is_werewoof, distance=..1]


# Set player and Wolf tags
tag @s add goldpaths.is_transformed

tag @n[type=wolf, tag=goldpaths.morph_werewoof, tag=!goldpaths.is_werewoof, distance=..1] add goldpaths.is_werewoof


# Display transformation effects
particle poof ~ ~1 ~ 0.15 0.2 0.15 0.025 20
particle gust ~ ~1 ~ 0.0 0.0 0.0 1 1

playsound item.armor.equip_leather player @s ~ ~ ~ 1 0.85


# Grant advancement
advancement grant @s only goldpaths:werewoof/use_transform

# Display verbose message
execute if data storage goldark:settings { verbose_mode: true } run function goldark:__core/utils/log_message { message: '"You have been transformed into a Wolf."' }