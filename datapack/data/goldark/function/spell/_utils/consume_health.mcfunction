## * AydenTFoxx @ 2025-06-30 .. 2025-07-01
## * 
## * Consumes the player's health relative to how much Mana they "owe" to a spell.

##? Function Arguments:
#? duration: The duration of the negative effects. Each second is one health (half heart) taken.


# Grant advancement
advancement grant @s only goldark:mana_depleted depleted_mana


# Play audio cue
playsound ambient.cave hostile @s ~ ~ ~ 0.8 0.8

# Apply effects
$effect give @s wither $(duration) 1 true
$effect give @s darkness $(duration) 1 true