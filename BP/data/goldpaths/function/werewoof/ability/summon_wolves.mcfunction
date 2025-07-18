## * AydenTFoxx @ 2025-07-10
## * 
## * Summons a pack of tamed Werewoof Wolves in Rage Mode around the player.
## * 
## * The Wolves attack anything considered a threat to the player, and despawn once their Rage is depleted.


# Reset scores
scoreboard players reset @s goldpaths.combo
scoreboard players reset @s goldpaths.combo_timer

# Play summoning sound
playsound entity.wolf_big.growl player @a[distance=..16] ~ ~ ~ 1 0.8


# Spawn Wolves (guaranteed)
execute positioned ~1 ~0.5 ~-1 run function goldpaths:werewoof/utils/wolf/spawn_reinforcements
execute positioned ~-1 ~0.5 ~1 run function goldpaths:werewoof/utils/wolf/spawn_reinforcements

# Spawn bonus Wolves
execute if predicate goldark:random/25 positioned ~1 ~0.5 ~1 run function goldpaths:werewoof/utils/wolf/spawn_reinforcements
execute if predicate goldark:random/25 positioned ~-1 ~0.5 ~-1 run function goldpaths:werewoof/utils/wolf/spawn_reinforcements