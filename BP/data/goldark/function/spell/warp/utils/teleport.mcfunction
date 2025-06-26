## * AydenTFoxx @ 2025-06-23* .. 2025-06-25
## * 
## * Teleports the user to the selected coordinates.


# Display teleport effects
particle portal ~ ~1 ~ 0.2 0.5 0.2 0.1 20

playsound block.portal.travel master @p[distance=..128]

# Teleport to target position
$execute as @p[distance=..128] run tp $(x) $(y) $(z)


# Remove self
function goldark:spell/warp/utils/remove