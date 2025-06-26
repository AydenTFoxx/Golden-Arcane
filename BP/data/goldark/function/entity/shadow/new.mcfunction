## * AydenTFoxx @ 2025-06-16
## * 
## * Summons a new "Shadow" entity.


# Summon entity
summon interaction ~ ~ ~ { \
    CustomName: { text: "Shadow", color: "black", obfuscated: true }, \
    CustomNameVisible: false, \
    width: 0.5, \
    height: 0.5, \
    Tags: [ goldark.entity.shadow ] \
}

# Set health
execute as @e[type=interaction, distance=0, tag=goldark.entity.shadow] unless score @s goldark.health matches 1.. \
        run scoreboard players set @s goldark.health 2


# Play spawning sound
playsound entity.breeze.idle_ground hostile @a[distance=..16] ~ ~ ~ 1 0.5