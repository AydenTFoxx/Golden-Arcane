execute if entity @s[nbt={ Item: { id: "minecraft:echo_shard" } }] align xyz positioned ~0.5 ~2 ~0.5 run function goldark:entity/_spell/warp_gate/new with entity @p[distance=..32] LastDeathLocation
execute if entity @s[nbt={ Item: { id: "minecraft:popped_chorus_fruit" } }] align xyz positioned ~0.5 ~2 ~0.5 run function goldark:entity/_spell/warp_gate/new_raw with entity @p[distance=..32] respawn

execute if entity @s[nbt={ Item: { id: "minecraft:popped_chorus_fruit" } }] unless data entity @p[distance=..32] respawn.dimension run return run playsound block.beacon.deactivate block @a[distance=..32] ~0.5 ~0.5 ~0.5

execute align xyz run particle explosion ~0.5 ~1 ~0.5 0.0 0.0 0.0 1 1
execute align xyz run particle end_rod ~0.5 ~1 ~0.5 0.0 0.0 0.0 0.1 8

execute align xyz run playsound block.end_portal.spawn block @a[distance=..32] ~0.5 ~0.5 ~0.5 1 0.5 0.1

kill @s[type=item]