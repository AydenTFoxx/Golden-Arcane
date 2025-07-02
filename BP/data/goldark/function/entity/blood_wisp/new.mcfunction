## * AydenTFoxx @ 2025-06-23* .. 2025-06-25
## * 
## * Summons a new "Blood Wisp" entity.


# Summon entity
summon marker ~ ~ ~ { CustomName: { translate: "%'s Blood Wisp", with: [ { selector: "@s" } ], color: "red" }, CustomNameVisible: false, Tags: [ goldark.entity.blood_wisp ] }


# Display spawning particles
particle witch ~ ~ ~ 0.0 0.0 0.0 0.0 2

# Play spawning sound
playsound ambient.crimson_forest.additions player @s ~ ~ ~ 1 0.8