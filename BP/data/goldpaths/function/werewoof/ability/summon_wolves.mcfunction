## * AydenTFoxx @ 2025-07-10


scoreboard players reset @s goldpaths.combo
scoreboard players reset @s goldpaths.combo_timer


playsound entity.wolf_big.growl player @a[distance=..16] ~ ~ ~ 1 0.8


execute positioned ~1 ~0.5 ~-1 run function goldpaths:werewoof/utils/wolf/spawn_reinforcements
execute positioned ~-1 ~0.5 ~1 run function goldpaths:werewoof/utils/wolf/spawn_reinforcements

execute if predicate goldark:random/25 positioned ~1 ~0.5 ~1 run function goldpaths:werewoof/utils/wolf/spawn_reinforcements
execute if predicate goldark:random/25 positioned ~-1 ~0.5 ~-1 run function goldpaths:werewoof/utils/wolf/spawn_reinforcements