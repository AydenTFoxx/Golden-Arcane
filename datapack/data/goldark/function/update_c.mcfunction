## * AydenTFoxx @ 2025-07-02
## *
## * Updates all features of the datapack at a custom rate.

#? Tick Rate: 4:1
#? Step: 3


##? MANA

# Regenerate Mana
execute as @a[scores={ goldark.mana=..19 }] unless score @s goldark.artifact_cooldown matches 1.. run function goldark:spell/_utils/update_mana


##? OTHER

## Magic Cauldron
execute as @e[type=block_display, tag=goldark.block.cauldron] at @s align y positioned ~0.5 ~-0.5 ~0.5 run function goldark:spellcraft/cauldron/update

## Essence of Purity
execute as @e[type=marker, tag=goldark.dummy_magic.essence_white] at @s run function goldark:spellcraft/essences/white/tick