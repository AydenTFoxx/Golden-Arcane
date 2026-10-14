## * AydenTFoxx @ 2026-10-11
## *
## * Teleports the user to the selected coordinates.

##? Function Arguments:
#? pos: The XYZ coordinates to target.


# Ignore if not initialized
execute if entity @s[tag=goldark.entity.spell_gate_new] run return run data remove entity @s interaction


# Display teleport effects
particle portal ~ ~1 ~ 0.2 0.5 0.2 0.1 20

playsound block.portal.travel master @p[distance=..128]

# Teleport to target position
$execute as @p[distance=..128] run tp @s $(pos)


# Remove self
execute if entity @s[tag=goldark.is_one_use] run function goldark:spell/warp/utils/remove