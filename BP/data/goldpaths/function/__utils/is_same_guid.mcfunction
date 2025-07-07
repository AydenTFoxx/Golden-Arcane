## * AydenTFoxx @ 2025-07-05
## * 
## * CONDITIONAL: Returns 1 if the caller and the closest player have the same GUID, 0 otherwise.


# Morph
execute if entity @s[type=!player] run return run execute if score @s goldark.guid = @n[type=#goldark:player_allies, tag=goldpaths.has_path, distance=..2] goldark.guid

# Player
return run execute if score @s goldark.guid = @n[type=#goldark:player_allies, tag=goldpaths.is_morph, distance=..2] goldark.guid