# Evaluate metal sickness
execute if entity @s[tag=!goldark.perk.holy_immune, tag=!goldark.save_gamemode.creative, tag=!goldark.save_gamemode.spectator] unless entity @s[gamemode=creative] \
        run function goldark:path/werewoof/sickness

# Revoke Holy Sickness (Creative)
tag @s[tag=goldark.holy_sickness.active, tag=goldark.holy_sickness.based, gamemode=creative] remove goldark.holy_sickness.based
tag @s[tag=goldark.holy_sickness.active, tag=goldark.holy_sickness.pure, gamemode=creative] remove goldark.holy_sickness.pure
tag @s[tag=goldark.holy_sickness.active, tag=goldark.holy_sickness.pure_block, gamemode=creative] remove goldark.holy_sickness.pure_block

tag @s[tag=goldark.holy_sickness.active, gamemode=creative] remove goldark.holy_sickness.active