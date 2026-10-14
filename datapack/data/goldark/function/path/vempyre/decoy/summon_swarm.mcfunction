# Level II
execute if score @s goldark.path_level.vempyre matches 2.. run summon bat ~0.5 ~ ~ { NoAI: 1b, Tags: [ goldark.vempyre.bat_decoy, goldark.is_hostile ] }
execute if score @s goldark.path_level.vempyre matches 2.. run summon bat ~-0.5 ~ ~ { NoAI: 1b, Tags: [ goldark.vempyre.bat_decoy, goldark.is_hostile ] }
execute if score @s goldark.path_level.vempyre matches 2.. run summon bat ~ ~ ~-0.5 { NoAI: 1b, Tags: [ goldark.vempyre.bat_decoy, goldark.is_hostile ] }
execute if score @s goldark.path_level.vempyre matches 2.. run summon bat ~ ~ ~0.5 { NoAI: 1b, Tags: [ goldark.vempyre.bat_decoy, goldark.is_hostile ] }

# Level III
execute if score @s goldark.path_level.vempyre matches 3.. run summon bat ~1 ~1 ~ { NoAI: 1b, Tags: [ goldark.vempyre.bat_decoy, goldark.vempyre.bat_decoy_strong, goldark.is_hostile ], Invulnerable: 1b, Fire: 80s }
execute if score @s goldark.path_level.vempyre matches 3.. run summon bat ~-1 ~1 ~ { NoAI: 1b, Tags: [ goldark.vempyre.bat_decoy, goldark.vempyre.bat_decoy_strong, goldark.is_hostile ], Invulnerable: 1b, Fire: 80s }
execute if score @s goldark.path_level.vempyre matches 3.. run summon bat ~ ~1 ~-1 { NoAI: 1b, Tags: [ goldark.vempyre.bat_decoy, goldark.vempyre.bat_decoy_strong, goldark.is_hostile ], Invulnerable: 1b, Fire: 80s }
execute if score @s goldark.path_level.vempyre matches 3.. run summon bat ~ ~1 ~1 { NoAI: 1b, Tags: [ goldark.vempyre.bat_decoy, goldark.vempyre.bat_decoy_strong, goldark.is_hostile ], Invulnerable: 1b, Fire: 80s }

# Set owner GUID
execute as @e[type=bat, tag=goldark.vempyre.bat_decoy, distance=..1] unless score @s goldark.guid matches 1.. run scoreboard players operation @s goldark.guid = @p[tag=goldark.is_vempyre, distance=0] goldark.guid