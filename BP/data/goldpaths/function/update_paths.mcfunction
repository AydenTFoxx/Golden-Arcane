## * AydenTFoxx @ 2025-07-06 .. 2025-07-10
## * 
## * Updates entities with their relevant Golden Arcane Paths.


##? WEREWOOF

# Player
execute as @a[tag=goldpaths.is_werewoof, tag=!goldark.effect.purity] at @s run function goldpaths:werewoof/update_player

# Wolf (morph)
execute as @e[type=wolf, tag=goldpaths.is_werewoof] at @s run function goldpaths:werewoof/update_wolf