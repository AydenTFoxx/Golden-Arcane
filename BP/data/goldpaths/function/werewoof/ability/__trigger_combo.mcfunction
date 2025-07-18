## * AydenTFoxx @ 2025-07-09 .. 2025-07-16
## * 
## * Increases the player's kill streak / combo upon each successful kill, while also setting a "combo timer".
## * Failing to kill another creature within that timer resets the combo back to 0.
## * 
## * Reaching certain thresholds grant special abilities to aid in combat further. In particular, 10, 30, and 50 kills grant powerful buffs and new (temporary) abilities to use.


# Revoke trigger
advancement revoke @s only goldpaths:werewoof/utils/kill_mob

# Ignore if non-Werewoof
execute unless entity @s[tag=goldpaths.is_werewoof] run return fail

# Ignore if preparing Banish
execute if entity @s[tag=goldpaths.werewoof.banish] run return fail


# Add combo score
execute unless score @s goldpaths.combo matches 80.. run scoreboard players add @s goldpaths.combo 1

# Set combo time
scoreboard players set @s[scores={ goldpaths.combo=..30 }] goldpaths.combo_timer 80
scoreboard players set @s[scores={ goldpaths.combo=31..50 }] goldpaths.combo_timer 160
scoreboard players set @s[scores={ goldpaths.combo=51.. }] goldpaths.combo_timer 240


# Apply combo effects (5+ kills)
execute if score @s goldpaths.combo matches 5.. run function goldpaths:werewoof/ability/_apply_attack_effects


# Display actionbar messages (2+ kills)
title @s[scores={ goldpaths.combo=2..9 }] actionbar { translate: "{ %s: %s }", color: "gray", with: [ { text: "Kill streak", color: "white" }, { score: { name: "@s", objective: "goldpaths.combo" }, color: "red" } ] }
title @s[scores={ goldpaths.combo=10..29 }] actionbar { translate: "{ %s: %s } | Press %s to %s.", color: "gray", with: [ { text: "Kill streak", color: "yellow" }, { score: { name: "@s", objective: "goldpaths.combo" }, color: "red" }, { text: "CTRL+SHIFT", color: "yellow" }, { text: "Lunge", color: "white" } ] }
title @s[scores={ goldpaths.combo=30..49 }] actionbar { translate: "{ %s: %s } | Press %s to %s.", color: "gray", with: [ { text: "Kill streak", color: "gold" }, { score: { name: "@s", objective: "goldpaths.combo" }, color: "red" }, { text: "CTRL+SHIFT", color: "yellow" }, { text: "Summon Wolves", color: "yellow" } ] }
title @s[scores={ goldpaths.combo=50.. }] actionbar { translate: "{ %s: %s } | Hold %s to %s.", color: "white", with: [ { text: "Kill streak", color: "red" }, { score: { name: "@s", objective: "goldpaths.combo" }, color: "gold" }, { text: "CTRL+SHIFT", color: "yellow" }, { text: "Banish", color: "aqua" } ] }

# Grant advancements (10, 40, 80 kills)
advancement grant @s[scores={ goldpaths.combo=10.. }] only goldpaths:werewoof/kill_streak_short
advancement grant @s[scores={ goldpaths.combo=30.. }] only goldpaths:werewoof/kill_streak_long
advancement grant @s[scores={ goldpaths.combo=50.. }] only goldpaths:werewoof/kill_streak_final