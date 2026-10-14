## * AydenTFoxx @ 2025-07-05 .. 2025-07-12
## *
## * Reverts the player's transformation, removing the Wolf and returning the player.


# Apply damage from Wolf to player
execute if entity @s[tag=!goldark.gamemode.creative, tag=!goldark.gamemode.spectator] run function goldark:path/werewoof/utils/apply_deferred_damage

# Remove Wolf
execute as @e[type=wolf, tag=goldark.morph_werewoof, distance=..2] if function goldark:tools/is_same_guid run data merge entity @s { Health: 0.0f, DeathTime: 20s }


# Return player
function goldark:tools/reset_gamemode

# Remove tag
tag @s remove goldark.is_transformed


# Move upwards if stuck on ground
execute unless block ~ ~ ~ #goldark:is_breathable run tp @s ~ ~0.5 ~

# Apply protective effects
effect give @s levitation 1 0 true
effect give @s resistance 1 2 true

# Apply debuffs
execute unless predicate goldark:random/50 run effect give @s hunger 8 1
execute unless predicate goldark:random/25 run effect give @s mining_fatigue 8 0


# Display de-transformation effects
particle gust ~ ~1 ~ 0.0 0.0 0.0 1 1

playsound particle.soul_escape player @s ~ ~ ~ 1 0.85