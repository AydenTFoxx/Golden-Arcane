## * AydenTFoxx @ 2025-07-06
## * 
## * Updates entities with their relevant Golden Arcane Paths.


##? PERKS

# Revoke perks on death
execute as @a[tag=goldpaths.perk_werewoof] if data entity @s { Health: 0.0f } run function goldpaths:_perks/werewoof


##? WEREWOOF

# Player
execute as @a[tag=goldpaths.is_werewoof] at @s run function goldpaths:werewoof/update_player

# Wolf (morph)
execute as @e[type=wolf, tag=goldpaths.is_werewoof] at @s run function goldpaths:werewoof/update_wolf