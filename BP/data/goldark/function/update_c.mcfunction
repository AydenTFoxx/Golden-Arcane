## * AydenTFoxx @ 2025-07-02
## * 
## * Updates all features of the datapack at a custom rate.

#? Tick Rate: 4:1
#? Step: 3


##? MANA

# Regenerate Mana
execute as @a[scores={ goldark.mana=..19 }] unless score @s goldark.ability_timer matches 1.. run function goldark:spell/_utils/update_mana


##? SETTINGS

# Open settings menu
execute as @a[scores={ goldark.settings=1 }] run function goldark:_settings/_menu with storage goldark:settings

# Apply settings options
execute as @a[scores={ goldark.settings=1000.. }] at @s run function goldark:_settings/apply_actions


# Reset trigger
execute as @a[scores={ goldark.settings=1.. }] run function goldark:_settings/_utils/reset_trigger