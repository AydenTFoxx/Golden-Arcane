## * AydenTFoxx @ 2025-06-26 .. 2025-07-02
## * 
## * Displays a custom message to the player with Golden Arcane's prefix.

##? Function Arguments:
#? message: The text to be displayed to the user; In-game, it is displayed as "[ @GOLDARK: <message> ]".
#? color: The color of the message.


# Send message
$tellraw @s [ { text: "[ ", color: "gray" }, { text: "@GOLDARK: ", color: "gold", hover_event: { action: "show_text", value: { text: "Golden Arcane", color: "aqua" } } }, { text: "$(message)", color: "$(color)" }, { text: " ]", color: "gray" } ]