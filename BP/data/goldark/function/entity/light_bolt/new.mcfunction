## * AydenTFoxx @ 2025-06-25 .. 2025-06-29
## * 
## * Summons a new "Light Bolt" projectile entity.


# Summon entity
summon marker ~ ~ ~ { CustomName: "Light Bolt", CustomNameVisible: false, Tags: [ goldark.entity.light_bolt ] }

# Play spawning sound
playsound entity.breeze.whirl neutral @a[distance=..16] ~ ~ ~ 0.8 1.2