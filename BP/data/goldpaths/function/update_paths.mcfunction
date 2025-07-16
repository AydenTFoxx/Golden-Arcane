## * AydenTFoxx @ 2025-07-06 .. 2025-07-16
## * 
## * Updates entities with their relevant Golden Arcane Paths.


## Ignore if datapack has been disabled globally
execute if data storage goldark:settings { benchmark: true } run return fail


##? WEREWOOF

# Player
execute as @a[tag=goldpaths.is_werewoof, tag=!goldark.effect.purity] at @s run function goldpaths:werewoof/update_player

# Wolf (morph)
execute as @e[type=wolf, tag=goldpaths.is_werewoof] at @s run function goldpaths:werewoof/update_wolf