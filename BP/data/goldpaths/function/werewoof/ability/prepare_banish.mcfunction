## * AydenTFoxx @ 2025-07-10


tag @s[tag=!goldpaths.werewoof.banish] add goldpaths.werewoof.banish

scoreboard players add @s goldpaths.combo_timer 1


effect give @n[type=!#goldark:immune_to_banishment, predicate=goldark:entity/is_hostile, distance=..4] glowing 1 0
effect give @n[type=!#goldark:immune_to_banishment, predicate=goldark:entity/is_hostile, distance=..4] slowness 1 3

execute at @n[type=!#goldark:immune_to_banishment, predicate=goldark:entity/is_hostile, distance=..4] run particle end_rod ~ ~1 ~ 0.0 -0.5 0.0 0.1 0
execute at @n[type=!#goldark:immune_to_banishment, predicate=goldark:entity/is_hostile, distance=..4] run particle nautilus ~ ~ ~ 0.0 0.0 0.0 0.8 1


execute if entity @n[type=!#goldark:immune_to_banishment, predicate=goldark:entity/is_hostile, distance=..4] run title @s actionbar { translate: "( Release all controls to %s the selected entity. )", color: "white", with: [ { text: "Banish", color: "aqua" } ] }
execute unless entity @n[type=!#goldark:immune_to_banishment, predicate=goldark:entity/is_hostile, distance=..4] run title @s actionbar { text: "[ Point towards the entity you wish to target. ]", color: "gray" }