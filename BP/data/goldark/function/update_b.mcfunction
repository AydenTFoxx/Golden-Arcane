#? 2:1


##? ENTITY

## Luminance Wisp
execute as @e[type=marker, tag=goldark.entity.luminance_wisp] at @s if loaded ~ ~ ~ run function goldark:entity/luminance_wisp/update

## Blood Wisp
execute as @e[type=marker, tag=goldark.entity.blood_wisp] at @s if loaded ~ ~ ~ run function goldark:entity/blood_wisp/update