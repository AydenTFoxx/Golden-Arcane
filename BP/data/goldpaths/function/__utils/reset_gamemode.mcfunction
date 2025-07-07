## * AydenTFoxx @ 2025-07-05
## * 
## * Resets the player's previous gamemode, as stored by the "set_gamemode" function.


# Reset gamemode
gamemode adventure @s[tag=goldpaths.gamemode.adventure]
gamemode creative @s[tag=goldpaths.gamemode.creative]
gamemode spectator @s[tag=goldpaths.gamemode.spectator]
gamemode survival @s[tag=goldpaths.gamemode.survival]

# Remove tag
tag @s[tag=goldpaths.gamemode.adventure] remove goldpaths.gamemode.adventure
tag @s[tag=goldpaths.gamemode.creative] remove goldpaths.gamemode.creative
tag @s[tag=goldpaths.gamemode.spectator] remove goldpaths.gamemode.spectator
tag @s[tag=goldpaths.gamemode.survival] remove goldpaths.gamemode.survival