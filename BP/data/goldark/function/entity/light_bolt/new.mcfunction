## * AydenTFoxx @ 2025-06-25
## * 
## * Summons a new "Light Bolt" projectile entity.


# Summon entity
summon interaction ~ ~ ~ { CustomName: "Light Bolt", CustomNameVisible: false, Tags: [ goldark.entity.light_bolt ] }

# Inherit facing direction from caster
data modify entity @n[type=interaction, tag=goldark.entity.light_bolt, distance=..1] Rotation set from entity @n[type=marker, tag=goldark.entity.spell_smite, distance=..1] Rotation
data modify entity @n[type=interaction, tag=goldark.entity.light_bolt, distance=..1] Rotation set from entity @p[distance=..1] Rotation

# Set lifetime
scoreboard players set @n[type=interaction, tag=goldark.entity.light_bolt, distance=..1] goldark.ability_timer 200


# Play spawning sound
playsound block.amethyst_block.chime neutral @a[distance=..16] ~ ~ ~ 1 0.8