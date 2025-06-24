# Set cooldown
scoreboard players set @s goldark.ability_timer 20
tag @s add goldark.magic_sickness


# Block
execute if items entity @s weapon.mainhand #swords[custom_data={ goldark: { items: { blood_weapon: true, weapon_mode: "bow" } } }] run return run item modify entity @s weapon.mainhand goldark:blood_weapon/mode_block

# Bow
execute if items entity @s weapon.mainhand #swords[custom_data={ goldark: { items: { blood_weapon: true, weapon_mode: "block" } } }] run item modify entity @s weapon.mainhand goldark:blood_weapon/mode_bow