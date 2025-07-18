## * AydenTFoxx @ 2025-07-10
## * 
## * Spawns a smaller, faster Wolf that despawns after its Rage timer runs out.


# Summon Wolf
summon wolf ~ ~ ~ { Health: 10.0f, PortalCooldown: 20s, PersistenceRequired: 1b, Tags: [ goldpaths.is_werewoof, goldpaths.rage_mode ], active_effects: [ { id: "regeneration", amplifier: 1, duration: -1, show_particles: false }, { id: "resistance", amplifier: 1, duration: -1, show_particles: false } ], attributes: [ { id: "armor", base: 4.0 }, { id: "armor_toughness", base: 4.0 }, { id: "attack_damage", base: 2.0 }, { id: "attack_knockback", base: 0.25 }, { id: "fall_damage_multiplier", base: 0.8 }, { id: "jump_strength", base: 0.4 }, { id: "knockback_resistance", base: 0.1 }, { id: "max_health", base: 8.0, modifiers: [ { id: "goldpaths:werewoof/wolf_health", amount: 2.0, operation: "add_value" } ] }, { id: "movement_speed", base: 0.35 }, { id: "scale", base: 1.25 } ], Team: "goldpaths.werewoof", Age: 99999 }

# Set Wolf score
scoreboard players set @n[type=wolf, tag=goldpaths.is_werewoof, tag=!goldpaths.is_morph, distance=..1] goldark.ability_timer 600

# Set Wolf owner as player
data modify entity @n[type=wolf, tag=goldpaths.is_werewoof, tag=!goldpaths.is_morph, distance=..1] Owner set from entity @s UUID