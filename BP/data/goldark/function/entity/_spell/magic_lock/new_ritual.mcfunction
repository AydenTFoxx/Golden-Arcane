function goldark:entity/_spell/magic_lock/new

particle gust ~ ~0.5 ~ 0.0 0.0 0.0 1.0 1
particle enchant ~ ~0.5 ~ 0.0 0.1 0.0 0.8 12

playsound block.respawn_anchor.set_spawn block @a[distance=..16] ~ ~ ~ 1 0.6

kill @s[type=item]