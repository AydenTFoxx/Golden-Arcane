## * AydenTFoxx @ 2025-07-06 .. 2025-07-07
## * 
## * Grants the user the Purity effect, nullifying all other status effects for its duration.

#? On Use: Potion of Purity
#? Grants Effect: Purity


## INIT

# Reset triggers
advancement revoke @s only goldark:use_item/potion_purity


# Display trigger effects
execute unless entity @s[tag=goldark.effect.purity] run particle flash ~ ~1 ~ 0.1 0.2 0.1 0.05 1
execute unless entity @s[tag=goldark.effect.purity] run particle portal ~ ~1 ~ 0.01 0.2 0.01 0.8 16

execute unless entity @s[tag=goldark.effect.purity] run playsound block.portal.travel player @s ~ ~ ~ 1 0.67


# Set duration
execute unless entity @s[tag=goldark.effect.purity] run scoreboard players set @s goldark.ability_clock 800

# Add tag
execute unless entity @s[tag=goldark.effect.purity] run tag @s add goldark.effect.purity


## TICK

# Tick duration
scoreboard players remove @s goldark.ability_clock 1

# Revoke all effects
effect clear @s

tag @s[tag=goldark.effect.luminance] remove goldark.effect.luminance

# Set Magic Sickness
scoreboard players set @s goldark.ability_timer 80

# Set Weakness
execute unless score @s goldark.ability_clock matches ..0 run effect give @s weakness 12 0


# Revoke perks
execute if entity @s[tag=goldpaths.perk_werewoof] run function goldpaths:_perks/werewoof

# De-transform player
execute if entity @s[tag=goldpaths.is_werewoof, tag=goldpaths.is_transformed] run function goldpaths:werewoof/utils/revert


## END

# Remove tag
execute if score @s goldark.ability_clock matches ..0 run tag @s remove goldark.effect.purity

# Display ending effects
execute if score @s goldark.ability_clock matches ..0 run particle gust ~ ~1 ~ 0.0 0.0 0.0 0.0 1

execute if score @s goldark.ability_clock matches ..0 run playsound block.portal.trigger player @s ~ ~ ~ 1 0.8 0.2

# Reset score
scoreboard players reset @s[scores={ goldark.ability_clock=..0 }] goldark.ability_clock