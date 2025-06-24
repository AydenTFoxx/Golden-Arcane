## REVOKE

execute if entity @s[tag=goldark.is_silenced] run data modify entity @s Silent set value false

execute if entity @s[tag=goldark.is_silenced] anchored eyes run playsound particle.soul_escape neutral @a[distance=..16] ^ ^ ^ 1 1.2
execute if entity @s[tag=goldark.is_silenced] anchored eyes run particle white_smoke ^ ^ ^ 0.1 0.2 0.1 0.01 8

execute if entity @s[tag=goldark.is_silenced] run return run tag @s remove goldark.is_silenced


## GRANT

data modify entity @s Silent set value true

tag @s add goldark.is_silenced


execute anchored eyes run particle nautilus ^ ^ ^ 0.05 0.2 0.05 0.8 12
execute anchored eyes run particle large_smoke ^ ^ ^ 0.01 0.01 0.01 0.05 4