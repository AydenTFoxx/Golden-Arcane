## * AydenTFoxx @ 2025-06-26 .. 2025-06-29
## * 
## * Displays a custom message to the player with Golden Arcane's prefix.

##? Note: Requires Debug Mode ("debug_mode": true) or Verbose Mode ("verbose_mode": true); Otherwise, no message is sent.


# Ignore if not in Debug or Verbose modes
execute unless data storage goldark:settings { debug_mode: true } unless data storage goldark:settings { verbose_mode: true } run return fail

# Send message
$tellraw @s [ { text: "[ ", color: "gray" }, { text: "@GOLDARK: ", color: "gold", hover_event: { action: "show_text", value: { text: "Golden Arcane", color: "aqua" } }, click_event: { action: "show_dialog", dialog: "goldark:golden_arcane" } }, { text: "$(message)", color: "$(color)" }, { text: " ]", color: "gray" } ]