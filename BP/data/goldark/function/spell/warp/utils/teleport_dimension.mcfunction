## * AydenTFoxx @ 2025-06-23* .. 2025-06-29
## * 
## * Teleports the user to the selected dimension and coordinates.

##? Function Arguments:
#? dimension: The namespaced ("minecraft:" optional) identifier of the target dimension.
#? x: The X position of the target coordinates.
#? y: The Y position of the target coordinates.
#? z: The Z position of the target coordinates.


## Ignore if not initialized
execute if entity @s[tag=goldark.entity.spell_gate_new] run return run data remove entity @s interaction


# Display teleport effects
particle portal ~ ~1 ~ 0.2 0.5 0.2 0.1 20

playsound block.portal.travel master @p[distance=..128]

# Teleport to target position and dimension
$execute as @p[distance=..128] in $(dimension) run tp $(x) $(y) $(z)


# Remove self
execute if entity @s[tag=goldark.is_one_use] run function goldark:spell/warp/utils/remove