## * AydenTFoxx @ 2025-07-10 .. 2025-07-16
## *
## * Runs code exactly once upon a player's death.


# Add tag
tag @s add goldark.is_dead

# Remove effects
function goldark:effect/_remove_all

scoreboard players set @s goldark.effect_timer.holy_sickness 0
scoreboard players set @s goldark.effect_timer.holy_numbness 0

tag @s remove goldark.effect.purity


# Revoke player perks on death
execute if entity @s[tag=goldark.perk.werewoof] run function goldark:perk/werewoof
execute if entity @s[tag=goldark.perk.vempyre] run function goldark:perk/vempyre

scoreboard players set @a[scores={ goldark.deaths_player=1.. }] goldark.deaths_player 0

# Reset combo [Werewoof]
scoreboard players reset @s[scores={ goldark.combo=1.. }] goldark.combo_timer
scoreboard players reset @s[scores={ goldark.combo=1.. }] goldark.combo

# Reset abilities [Werewoof]
tag @s[tag=goldark.werewoof.lunge] remove goldark.werewoof.lunge
tag @s[tag=goldark.werewoof.banish] remove goldark.werewoof.banish


# Reset score
scoreboard players reset @s goldark.deaths_player