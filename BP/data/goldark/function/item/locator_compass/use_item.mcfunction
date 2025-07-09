## * AydenTFoxx @ 2025-06-29 .. 2025-07-08
## * 
## * Operates behaviors of the Locator Compass when used.


# Revoke trigger
advancement revoke @s only goldark:use_item/locator_compass


# Ignore if not renamed or wrong item
execute unless data entity @s SelectedItem.components."minecraft:custom_data".goldark.items.locator_compass run return fail
execute unless data entity @s SelectedItem.components."minecraft:custom_name".text run return run title @s actionbar { text: "You must first activate this artifact before using it." }


# Locate structure
function goldark:item/locator_compass/locate_structure with entity @s SelectedItem.components.minecraft:custom_name


# Ignore if on cooldown
execute if score @s goldark.ability_timer matches 1.. run return fail

# Set score
scoreboard players set @s goldark.ability_timer 10

# Damage item
execute if items entity @s[gamemode=!creative] weapon.mainhand recovery_compass[custom_data~{ goldark: { items: { locator_compass: true } } }] run function goldark:item/__utils/damage_item { slot: "weapon.mainhand", max_damage: 250 }
execute if items entity @s[gamemode=!creative] weapon.offhand recovery_compass[custom_data~{ goldark: { items: { locator_compass: true } } }] run function goldark:item/__utils/damage_item { slot: "weapon.offhand", max_damage: 250 }