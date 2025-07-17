## * AydenTFoxx @ 2025-07-05 .. 2025-07-17
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
execute summon wolf run function goldpaths:werewoof/utils/summon_wolf

# Initialize player and Wolf's GUID
execute unless score @s goldark.guid matches 1.. run function goldark:spell/_utils/new_guid
scoreboard players operation @n[type=wolf, tag=goldpaths.morph_werewoof, tag=!goldpaths.is_werewoof, distance=..1] goldark.guid = @s goldark.guid


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