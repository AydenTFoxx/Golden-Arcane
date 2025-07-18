## * AydenTFoxx @ 2025-06-26 .. 2025-07-10
## * 
## * Displays a custom message to the player with Golden Arcane's prefix.

##? Function Arguments:
#? message: Either a JSON Object or quoted string, which will be displayed to the the user as "[ @GOLDARK: <message> ]".


# Send message (raw)
$tellraw @s [ { text: "[ ", color: "gray" }, { text: "@GOLDARK: ", color: "gold", hover_event: { action: "show_text", value: { text: "Golden Arcane", color: "aqua" } } }, $(message), { text: " ]", color: "gray" } ]