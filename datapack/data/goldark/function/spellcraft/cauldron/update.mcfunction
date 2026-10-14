## * Runs code pertaining to the modified cauldron block, a staple of magic creation in Golden Arcane.
## *
## * Last modified: January 25th, 2025 (AydenTFoxx)


## # VISUAL

# Display particles
particle reverse_portal ~ ~ ~ 0.2 0.2 0.2 0.015 1


# Tick ambience clock
scoreboard players add @s goldark.ambience 1

# Play ambient audio
execute if score @s goldark.ambience matches 240 run playsound block.respawn_anchor.ambient block @a[distance=..16] ~ ~ ~ 1 0.8

# Reset clock
scoreboard players reset @s[scores={ goldark.ambience=240.. }] goldark.ambience


## # BEHAVIOR

# Teleport players randomly
execute as @p[distance=..0.3, predicate=goldark:location/can_see_sky] at @s run function goldark:spellcraft/cauldron/utils/roll_random_pos

# Remove if Cauldron is broken
execute unless block ~ ~ ~ #cauldrons run function goldark:spellcraft/cauldron/remove


## CREATION

# Display smoke particles when an ingredient is added
execute at @n[type=item, tag=!goldark.cauldron.ingredient, distance=..1] if block ~ ~ ~ #cauldrons run particle white_smoke ~ ~ ~ 0.05 0.05 0.05 0.01 4
execute as @n[type=item, tag=!goldark.cauldron.ingredient, distance=..1] at @s if block ~ ~ ~ #cauldrons run tag @s add goldark.cauldron.ingredient


# Create Essences:

# Purity
execute if entity @n[type=item, tag=goldark.cauldron.ingredient, nbt={ Item: { id: "minecraft:glowstone_dust", count: 1 } }, distance=..1] \
        if entity @n[type=item, tag=goldark.cauldron.ingredient, nbt={ Item: { id: "minecraft:lily_of_the_valley", count: 1 } }, distance=..1] \
        run function goldark:spellcraft/essences/white/create