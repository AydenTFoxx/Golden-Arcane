## * AydenTFoxx @ 2025-07-06 .. 2025-07-08
## *
## * Grants the user the Purity effect, nullifying all other status effects for its duration.

#? On Use: Potion of Purity
#? Grants Effect: Purity


## INIT

# Reset triggers
advancement revoke @s only goldark:use_item/potion_purity


# Display trigger effects
execute unless entity @s[tag=goldark.effect.purity] run particle flash{color:16777215} ~ ~1 ~ 0.1 0.2 0.1 0.05 1
execute unless entity @s[tag=goldark.effect.purity] run particle portal ~ ~1 ~ 0.01 0.2 0.01 0.8 16

execute unless entity @s[tag=goldark.effect.purity] run playsound block.portal.trigger player @s ~ ~ ~ 1 0.67


# Set duration
execute unless entity @s[tag=goldark.effect.purity] run scoreboard players set @s goldark.effect_timer.holy_numbness 800

# Add tag
execute unless entity @s[tag=goldark.effect.purity] run tag @s add goldark.effect.purity


## TICK

# Tick duration
scoreboard players remove @s goldark.effect_timer.holy_numbness 1

# Revoke all effects
effect clear @s

tag @s[tag=goldark.effect.luminance] remove goldark.effect.luminance

# Set Magic Sickness
scoreboard players set @s goldark.ability_timer 80

# Set Weakness
execute unless score @s goldark.effect_timer.holy_numbness matches ..0 run effect give @s weakness 12 0


# Revoke perks
execute if entity @s[tag=goldark.perk.werewoof] run function goldark:perk/werewoof
execute if entity @s[tag=goldark.perk.vempyre] run function goldark:perk/vempyre

# De-transform player
execute if entity @s[tag=goldark.is_werewoof, tag=goldark.is_transformed] run function goldark:path/werewoof/utils/revert


## END

# Remove tag
execute if score @s goldark.effect_timer.holy_numbness matches ..0 run tag @s remove goldark.effect.purity

# Display ending effects
execute if score @s goldark.effect_timer.holy_numbness matches ..0 run particle gust ~ ~1 ~ 0.0 0.0 0.0 0.0 1

execute if score @s goldark.effect_timer.holy_numbness matches ..0 run playsound block.beacon.deactivate player @s ~ ~ ~ 1 0.8 0.2

# Reset score
scoreboard players reset @s[scores={ goldark.effect_timer.holy_numbness=..0 }] goldark.effect_timer.holy_numbness