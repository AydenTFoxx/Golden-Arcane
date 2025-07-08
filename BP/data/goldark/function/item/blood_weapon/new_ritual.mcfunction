## * AydenTFoxx @ 2025-07-03 .. 2025-07-04
## * 
## * Conjures a Blood Wielder with its respective ritual.


## Ignore if no valid player nearby
execute unless entity @p[distance=..16, level=1.., scores={ goldark.health_player=6.. }] run return fail


# Remove blocks
fill ~1 ~ ~1 ~-1 ~ ~-1 air replace redstone_torch

# Display "consume" particles
particle flame ~1 ~0.5 ~1 0.0 0.1 0.0 0.01 4
particle flame ~1 ~0.5 ~-1 0.0 0.1 0.0 0.01 4
particle flame ~-1 ~0.5 ~1 0.0 0.1 0.0 0.01 4
particle flame ~-1 ~0.5 ~-1 0.0 0.1 0.0 0.01 4

# Spawn "mouths" in place of the torches
summon evoker_fangs ~1 ~ ~1
summon evoker_fangs ~1 ~ ~-1
summon evoker_fangs ~-1 ~ ~1
summon evoker_fangs ~-1 ~ ~-1


# Apply Darkness to all nearby players
effect give @a[distance=..32] darkness 8 0 true


# Remove health & EXP
damage @p[distance=..16, level=1.., scores={ goldark.health_player=6.. }] 5 dry_out
xp add @p[distance=..16, level=1.., scores={ goldark.health_player=6.. }] -7 points

effect give @p[distance=..16, level=1.., scores={ goldark.health_player=6.. }] weakness 8 1
effect give @p[distance=..16, level=1.., scores={ goldark.health_player=6.. }] mining_fatigue 8 1

# Display effects to the Offering
execute at @p[distance=..16, level=1.., scores={ goldark.health_player=6.. }] run particle soul ~ ~1 ~ 0.0 0.0 0.0 0.1 1

playsound ambient.cave hostile @p[distance=..16, level=1.., scores={ goldark.health_player=6.. }] ~ ~1 ~ 1 0.8

# Enable advancement
advancement grant @p[distance=..16, level=1.., scores={ goldark.health_player=6.. }] only goldark:obtain_blood_weapon forge_blood_weapon


# Summon item
execute positioned ~ ~1.5 ~ run function goldark:item/blood_weapon

# Display summoning effects
particle reverse_portal ~ ~1.5 ~ 0.2 0.2 0.2 0.5 24
particle flash ~ ~1.5 ~ 0.0 0.0 0.0 1 1

playsound ambient.crimson_forest.mood hostile @a[distance=..32] ~ ~1 ~ 1 0.8 0.1
playsound block.respawn_anchor.set_spawn hostile @a[distance=..32] ~ ~1 ~ 1 0.67 0.1


# Return success
return 1