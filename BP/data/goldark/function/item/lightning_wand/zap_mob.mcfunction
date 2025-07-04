## * AydenTFoxx @ 2025-06-19 .. 2025-07-04
## * 
## * ZAP!

##? Easter Egg item; Do not take seriously.


# Revoke trigger
advancement revoke @s only goldark:use_item/lightning_wand

# Ignore if on cooldown
execute if entity @s[tag=goldark.magic_sickness] run return fail


# Set cooldown
scoreboard players set @s goldark.ability_timer 4

tag @s add goldark.magic_sickness


# Smite nearest creature
execute positioned ^ ^ ^4 at @n[type=!#goldark:technical, type=!player, distance=..8] run return run summon lightning_bolt

# Smite the land
execute positioned ^ ^ ^8 run return run summon lightning_bolt