## * AydenTFoxx @ 2025-06-30
## * 
## * Spawns a drop item with random Motion values.

##? Function Arguments:
#? item: The item to be dropped. Must be an item resource location.


# Spawn Item
$summon item ~ ~0.1 ~ { Item: { id: "$(item)" }, PickupDelay: 20s, Tags: [ goldark.item_drop ] }

# Set random Motion
execute store result entity @n[type=item, tag=goldark.item_drop, distance=..1] Motion[0] float 0.01 run random value -10..10
execute store result entity @n[type=item, tag=goldark.item_drop, distance=..1] Motion[1] float 0.01 run random value 1..10
execute store result entity @n[type=item, tag=goldark.item_drop, distance=..1] Motion[2] float 0.01 run random value -10..10