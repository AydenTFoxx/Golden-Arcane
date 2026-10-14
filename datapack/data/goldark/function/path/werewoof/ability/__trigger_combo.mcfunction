## * AydenTFoxx @ 2025-07-09 .. 2025-07-16
## *
## * Increases the player's kill streak / combo upon each successful kill, while also setting a "combo timer".
## * Failing to kill another creature within that timer resets the combo back to 0.
## *
## * Reaching certain thresholds grant special abilities to aid in combat further. In particular, 10, 30, and 50 kills grant powerful buffs and new (temporary) abilities to use.


# Revoke trigger
advancement revoke @s only goldark:path/werewoof/trigger/kill_mob

# Ignore if non-Werewoof
execute unless entity @s[tag=goldark.is_werewoof] run return fail

# Ignore if preparing Banish
execute if entity @s[tag=goldark.werewoof.banish] run return fail


# Add combo score
execute unless score @s goldark.combo matches 80.. run scoreboard players add @s goldark.combo 1

# Set combo time
scoreboard players set @s[scores={ goldark.combo=..25 }] goldark.combo_timer 80
scoreboard players set @s[scores={ goldark.combo=26..40 }] goldark.combo_timer 160
scoreboard players set @s[scores={ goldark.combo=41.. }] goldark.combo_timer 240


# Apply combo effects (5+ kills)
execute if score @s goldark.combo matches 5.. run function goldark:path/werewoof/ability/_apply_attack_effects


# Display actionbar messages (2+ kills)
title @s[scores={ goldark.combo=2..9 }] actionbar { translate: "{ %s: %s }", color: "gray", with: [ { text: "Kill streak", color: "white" }, { score: { name: "@s", objective: "goldark.combo" }, color: "red" } ] }
title @s[scores={ goldark.combo=10..24 }] actionbar { translate: "{ %s: %s } | Press %s to %s.", color: "gray", with: [ { text: "Kill streak", color: "yellow" }, { score: { name: "@s", objective: "goldark.combo" }, color: "red" }, { text: "CTRL+SHIFT", color: "yellow" }, { text: "Lunge", color: "white" } ] }
title @s[scores={ goldark.combo=25..39 }] actionbar { translate: "{ %s: %s } | Press %s to %s.", color: "gray", with: [ { text: "Kill streak", color: "gold" }, { score: { name: "@s", objective: "goldark.combo" }, color: "red" }, { text: "CTRL+SHIFT", color: "yellow" }, { text: "Summon Wolves", color: "yellow" } ] }
title @s[scores={ goldark.combo=40.. }] actionbar { translate: "{ %s: %s } | Hold %s to %s.", color: "white", with: [ { text: "Kill streak", color: "red" }, { score: { name: "@s", objective: "goldark.combo" }, color: "gold" }, { text: "CTRL+SHIFT", color: "yellow" }, { text: "Banish", color: "aqua" } ] }

# Grant advancements (10, 25, 40 kills)
advancement grant @s[scores={ goldark.combo=10.. }] only goldark:path/werewoof/kill_streak_short
advancement grant @s[scores={ goldark.combo=25.. }] only goldark:path/werewoof/kill_streak_long
advancement grant @s[scores={ goldark.combo=40.. }] only goldark:path/werewoof/kill_streak_final