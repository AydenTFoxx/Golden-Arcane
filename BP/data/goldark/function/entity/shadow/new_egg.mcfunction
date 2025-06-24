## * * * * * * * * * * * * * * ##
## * AydenTFoxx @ 2025-06-16 * ##
## * * * * * * * * * * * * * * ##


# Spawn Shadow
function goldark:entity/shadow/new

# Display animation (Natural Spawning)
execute unless entity @s[type=#goldark:technical] run particle large_smoke ~ ~0.5 ~ 0.1 0.2 0.1 0.005 12
execute unless entity @s[type=#goldark:technical] run playsound ambient.cave hostile @a[distance=..32] ~ ~0.5 ~ 0.8 0.5


# Remove self
kill @s[type=#goldark:technical]
data merge entity @s[type=!#goldark:technical, type=!player] { Health: 0f, DeathTime: 20s }