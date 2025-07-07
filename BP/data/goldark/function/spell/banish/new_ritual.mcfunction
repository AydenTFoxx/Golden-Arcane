## * AydenTFoxx @ 2025-07-05 .. 2025-07-06
## * 
## * Invokes a new Banishment spell with its respective ritual.


## Ignore if a Spell is present nearby
execute if entity @n[type=marker, tag=goldark.entity.spell_banish, distance=..4] run return fail

## Ignore if no Werewoof player is nearby
execute unless entity @p[tag=goldpaths.is_werewoof, tag=!goldpaths.is_transformed, distance=..8] run return fail

## Ignore if no mob is nearby
execute unless entity @n[type=!#goldark:immune_to_banishment, distance=..4] run return fail


# Consume Mana
execute as @p[tag=goldpaths.is_werewoof, tag=!goldpaths.is_transformed, distance=..8] run function goldark:spell/_utils/consume_mana { cost: 15 }

# Summon Spell
function goldark:spell/banish/new


# Display summoning particles
particle dust_pillar{ block_state: "redstone_block" } ~ ~ ~ 0.1 0.0 0.1 1.0 16
particle lava ~ ~ ~ 0.0 0.1 0.0 1 12

# Play summoning sound
playsound item.totem.use neutral @a[distance=..16] ~ ~ ~ 1 0.67


# Return success
return 1