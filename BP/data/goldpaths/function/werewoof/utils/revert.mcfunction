## * AydenTFoxx @ 2025-07-05 .. 2025-07-12
## * 
## * Reverts the player's transformation, removing the Wolf and returning the player.


# Apply damage from Wolf to player
execute if entity @s[tag=!goldpaths.gamemode.creative, tag=!goldpaths.gamemode.spectator] run function goldpaths:werewoof/utils/apply_deferred_damage

# Remove Wolf
execute as @e[type=wolf, tag=goldpaths.morph_werewoof, distance=..2] if function goldpaths:__utils/is_same_guid run data merge entity @s { Health: 0.0f, DeathTime: 20s }


# Return player
function goldpaths:__utils/reset_gamemode

# Remove tag
tag @s remove goldpaths.is_transformed


# Move upwards if stuck on ground
execute unless block ~ ~ ~ #goldark:is_breathable run tp @s ~ ~0.5 ~

# Apply protective effects
effect give @s levitation 1 0 true
effect give @s resistance 1 2 true

# Apply debuffs
execute if predicate goldark:random/50 run effect give @s hunger 8 1
execute if predicate goldark:random/25 run effect give @s mining_fatigue 8 0


# Display de-transformation effects
particle gust ~ ~1 ~ 0.0 0.0 0.0 1 1

playsound particle.soul_escape player @s ~ ~ ~ 1 0.85

# Display verbose message
execute if data storage goldark:settings { verbose_mode: true } run function goldark:__core/utils/log_message { message: '"You have been transformed back into a Human."' }