## * AydenTFoxx @ 2025-06-16
## * 
## * Displays extra particles and slowly kills the Shadow while under daylight.


## SUNLIGHT

# Display particles
particle white_smoke ~ ~0.25 ~ 0.1 0.1 0.1 0.01 1 force
particle small_flame ~ ~0.25 ~ 0.1 0.1 0.1 0.01 1


# Speed up ambience
scoreboard players add @s goldark.ambience 10

# Remove health
scoreboard players remove @s[scores={ goldark.ambience=300.. }] goldark.health 1