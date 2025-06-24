function goldark:entity/_spell/silence/new

particle note ~ ~0.5 ~ 0.15 0.1 0.15 0.5 8
particle reverse_portal ~ ~0.5 ~ 0.0 0.1 0.0 0.8 8

playsound block.sculk.break block @a[distance=..16] ~ ~ ~ 1 0.6

kill @s[type=item]