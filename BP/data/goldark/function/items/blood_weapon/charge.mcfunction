advancement revoke @s only goldark:use_item/blood_weapon

execute if entity @s[tag=goldark.magic_sickness] run return fail

execute if predicate goldark:input/sneak if predicate goldark:input/sprint run return run function goldark:items/blood_weapon/swap_mode


scoreboard players add @s goldark.ability_timer 2

particle crimson_spore ~ ~ ~ 0.0 0.0 0.0 0.0 1

playsound minecraft:ambient.basalt_deltas.additions player @s ~ ~ ~ 1 0.5


execute if items entity @s weapon #swords[custom_data~{ goldark: { items: { weapon_mode: "bow" } } }] if score @s goldark.ability_timer matches 80.. run function goldark:items/lightning_wand/zap_mob
