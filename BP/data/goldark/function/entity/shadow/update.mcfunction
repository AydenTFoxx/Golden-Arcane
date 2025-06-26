## * AydenTFoxx @ 2025-06-16 .. 2025-06-17
## * 
## * Updates the Shadow's behavior and abilities.


## AMBIENT

# Display particles
particle smoke ~ ~0.2 ~ 0.12 0.15 0.12 0.005 4 force
execute if entity @s[tag=goldark.is_hurt] run particle dust{ color: 11019293, scale: 1.2 } ~ ~ ~ 0.15 0.18 0.15 0.01 4 force

# Tick ambient clock
scoreboard players add @s goldark.ambience 1

# Play sound
execute if score @s[tag=!goldark.is_dead] goldark.ambience matches 300 run playsound entity.blaze.ambient hostile @a[distance=..16] ~ ~ ~ 0.8 0.3 0.1

# Reset clock
scoreboard players set @s[scores={ goldark.ambience=300.. }, tag=!goldark.is_dead] goldark.ambience 0


## HURT

# Trigger hurt function
execute if entity @s[tag=goldark.is_hurt] run function goldark:entity/shadow/update/hurt
execute if data entity @s[tag=!goldark.is_hurt, tag=!goldark.is_dead] attack run function goldark:entity/shadow/update/hurt

# Hurt by daylight
execute if predicate goldark:location/is_daytime positioned ~ ~1 ~ if predicate goldark:location/can_see_sky positioned ~ ~-1 ~ run function goldark:entity/shadow/update/hurt_daylight

# Instant death by lightning
execute if entity @n[type=lightning_bolt, distance=..1] run scoreboard players set @s goldark.health 0


## DEATH

# Protect against death upon spawning
execute if entity @s[tag=goldark.no_spawn_death] run scoreboard players set @s goldark.health 2
execute if entity @s[tag=goldark.no_spawn_death] run tag @s remove goldark.no_spawn_death

# Trigger death function
execute if score @s goldark.health matches ..0 run return run function goldark:entity/shadow/update/death


## ATTACK

# Apply gravity
execute if block ~ ~-0.1 ~ #air run tp @s ~ ~-0.3 ~
execute unless block ~ ~ ~ #air run tp @s ~ ~0.5 ~

# Run away from Luminance
execute facing entity @n[type=!#goldark:immune_to_shadow, tag=goldark.effect.luminance, distance=..6] feet run return run tp @s ^ ^ ^-0.15

# Trigger attack function
execute if entity @n[type=!#goldark:immune_to_shadow, distance=..16] unless block ~ ~-0.1 ~ #air run return run function goldark:entity/shadow/update/attack


## IDLE

# Turn randomly
execute if predicate goldark:random/10 run rotate @s ~25 ~
execute if predicate goldark:random/10 run rotate @s ~-25 ~

# Roam around
execute if predicate goldark:random/25 run tp @s ^ ^ ^0.2

# Despawn after some inactivity
scoreboard players add @s goldark.ability_clock 1
scoreboard players add @s[scores={ goldark.health=1 }] goldark.ability_clock 1

execute if predicate goldark:random/1 run kill @s[scores={ goldark.ability_clock=200.. }]