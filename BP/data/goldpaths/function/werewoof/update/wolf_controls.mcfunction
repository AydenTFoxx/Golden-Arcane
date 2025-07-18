## * AydenTFoxx @ 2025-07-10
## * 
## * Updates the player's control of the Wolf form they're transformed to.


## Force de-transforming if player's Wolf is not nearby
execute unless function goldpaths:__utils/is_same_guid run return run function goldpaths:werewoof/utils/revert


# Display Wolf health
execute if entity @n[type=wolf, tag=goldpaths.is_morph, tag=goldpaths.is_werewoof, tag=!goldpaths.rage_mode] run title @s actionbar { translate: "Wolf Health: %s", color: "gray", with: [ { entity: "@n[type=wolf, tag=goldpaths.morph_werewoof, distance=..2]", nbt: "Health", color: "red" } ] }
execute if entity @n[type=wolf, tag=goldpaths.is_morph, tag=goldpaths.is_werewoof, tag=goldpaths.rage_mode] run title @s actionbar ["", { text: "[ Rage Mode is active. ] ", color: "red" }, { translate: "Wolf Health: %s", color: "gray", with: [ { entity: "@n[type=wolf, tag=goldpaths.morph_werewoof, distance=..2]", nbt: "Health", color: "red" } ] }]

# Heal player
execute if data entity @n[type=wolf, tag=goldpaths.is_werewoof, distance=..1] { Health: 20.0f } if score @s goldark.health_player matches ..19 run effect give @s regeneration 13 2


# Rotate wolf as player
execute if predicate goldark:input/any_directional run rotate @n[type=wolf, tag=goldpaths.is_werewoof, distance=..1] facing ^ ^ ^4

# Jump as Wolf
execute if predicate goldark:input/jump as @n[type=wolf, tag=goldpaths.is_werewoof, distance=..1] if data entity @s { OnGround: 1b } run data modify entity @s Motion[1] set value 0.4

# Move Wolf
execute if predicate goldark:input/forward as @n[type=wolf, tag=goldpaths.is_werewoof, distance=..1] at @s unless block ~ ~-0.5 ~ #air align y if block ^ ^ ^0.4 #goldark:is_breathable run tp @s ^ ^ ^0.4 facing ^ ^ ^4
execute if predicate goldark:input/backward as @n[type=wolf, tag=goldpaths.is_werewoof, distance=..1] at @s unless block ~ ~-0.5 ~ #air align y if block ^ ^ ^-0.4 #goldark:is_breathable run tp @s ^ ^ ^-0.4

execute if predicate goldark:input/left run rotate @n[type=wolf, tag=goldpaths.is_werewoof, distance=..1] ~-12 ~
execute if predicate goldark:input/right run rotate @n[type=wolf, tag=goldpaths.is_werewoof, distance=..1] ~12 ~


## De-transform player
execute if predicate goldark:input/sneak run function goldpaths:werewoof/utils/revert