## * AydenTFoxx @ 2025-06-27 .. 2025-07-01
## * 
## * Removes the Catalyst entity after spawning a spell or expiring its time.
## * 
## * Effects are only played if the Catalyst reached its expiration time, and did not drop its item.


## Ignore if not expired (spell was activated)
execute unless score @s goldark.ability_timer matches 40.. run return run kill @s[type=#goldark:technical]


# Display "break" effects
particle end_rod ~ ~0.5 ~ 0.0 0.0 0.0 0.1 8
particle explosion ~ ~0.5 ~ 0.0 0.0 0.0 1 1

playsound block.vault.deactivate neutral @a[distance=..16] ~ ~ ~ 0.8 0.8
playsound block.glass.break neutral @a[distance=..16] ~ ~ ~ 0.8 0.8


# Remove self
kill @s[type=#goldark:technical]