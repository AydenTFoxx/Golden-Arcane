summon item ~ ~0.1 ~ { Item: { id: "minecraft:amethyst_shard" }, PickupDelay: 20s, Tags: [ goldark.item_drop ] }

execute store result entity @n[type=item, tag=goldark.item_drop, distance=..1] Motion[0] float 0.01 run random value -10..10
execute store result entity @n[type=item, tag=goldark.item_drop, distance=..1] Motion[1] float 0.01 run random value 1..10
execute store result entity @n[type=item, tag=goldark.item_drop, distance=..1] Motion[2] float 0.01 run random value -10..10


particle flash ~ ~0.5 ~ 0.0 0.0 0.0 1.0 1

playsound block.glass.break block @a[distance=..16] ~ ~ ~ 0.8 0.5

kill @s[type=#goldark:technical]