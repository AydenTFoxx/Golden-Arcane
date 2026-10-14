## * AydenTFoxx @ 2025-06-23* .. 2025-06-25
## *
## * Builds up energy for using the weapon's selected ability.

##! Experimental Item; Handle with care.


# Revoke trigger
advancement revoke @s only goldark:use_item/blood_weapon

# Ignore if on cooldown
execute if entity @s[tag=goldark.magic_sickness] run return fail

# Swap modes
execute if predicate goldark:input/sneak if predicate goldark:input/sprint run return run function goldark:item/blood_weapon/swap_mode


# Add "charge" score
scoreboard players add @s goldark.artifact_cooldown 2

# Display "power up" effects
particle crimson_spore ~ ~ ~ 0.0 0.0 0.0 0.0 1

playsound minecraft:ambient.basalt_deltas.additions player @s ~ ~ ~ 1 0.5


# Ability (Bow): Zap [Placeholder]
execute if items entity @s weapon #swords[custom_data~{ goldark: { items: { weapon_mode: "bow" } } }] if score @s goldark.artifact_cooldown matches 80.. run function goldark:item/lightning_wand/zap_mob

# Ability (Block): Resistance
execute if items entity @s weapon #swords[custom_data~{ goldark: { items: { weapon_mode: "bow" } } }] if score @s goldark.artifact_cooldown matches 20.. run effect give @s resistance 1 3 true
execute if items entity @s weapon #swords[custom_data~{ goldark: { items: { weapon_mode: "bow" } } }] if score @s goldark.artifact_cooldown matches 80.. run effect give @s regeneration 1 1 true