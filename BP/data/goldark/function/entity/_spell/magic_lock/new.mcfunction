summon marker ~ ~ ~ { CustomName: { text: "Arcane Lock" }, CustomNameVisible: false, Tags: [ goldark.entity.spell_lock ] }

#execute as @n[type=marker, tag=goldark.entity.spell_lock, distance=..1] run data modify entity @s data.goldark.spell_lock.x set from entity @s Pos[0]
#execute as @n[type=marker, tag=goldark.entity.spell_lock, distance=..1] run data modify entity @s data.goldark.spell_lock.y set from entity @s Pos[1]
#execute as @n[type=marker, tag=goldark.entity.spell_lock, distance=..1] run data modify entity @s data.goldark.spell_lock.z set from entity @s Pos[2]