## * AydenTFoxx @ 2025-07-05
## * 
## * Stores the player's previous gamemode, then sets it to the selected one.

##? Function Arguments:
#? gamemode: The gamemode to set the player to.


# Store previous gamemode
tag @s[gamemode=adventure] add goldpaths.gamemode.adventure
tag @s[gamemode=creative] add goldpaths.gamemode.creative
tag @s[gamemode=spectator] add goldpaths.gamemode.spectator
tag @s[gamemode=survival] add goldpaths.gamemode.survival

# Set new gamemode
$return run gamemode $(gamemode)