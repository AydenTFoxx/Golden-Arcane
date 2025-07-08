## * AydenTFoxx @ 2025-07-02 .. 2025-07-08
## * 
## * Displays the main settings menu panel to the user.
## * 
## * Has an alternative version for Operators and Developers.


# Default
$execute if entity @s[tag=!goldark.meta.is_operator, tag=!goldark.meta.is_developer, name=!AydenTFoxx] run return run tellraw @s [ \
    { text: "---> ", color: "blue" }, { translate: "Settings: %s", color: "gray", with: [ { text: "Golden Arcane", color: "gold" } ] }, { text: " <---", color: "blue" }, "\n\n", \
    { text: "# ", color: "yellow" }, { translate: "Graphics: %s", color: "gray", hover_event: { action: "show_text", value: "Sets the datapack's effects' quality.\n\nFancy: All visual effects are displayed.\nFast: Some effects are diminished for higher performance." }, with: [ { text: "$(graphics)", color: "aqua", hover_event: { action: "show_text", value: "Toggle value?" }, click_event: { action: "run_command", command: "/trigger goldark.settings set 1001" } } ] }, "\n\n", \
    { text: "# ", color: "yellow" }, { translate: "Force Transformations: %s", color: "gray", hover_event: { action: "show_text", value: ["If true, Werewoof players transform on Full Moons", "\n", "so long as they have direct view to the sky."] }, with: [ { text: "$(werewoof_force_transform)", color: "aqua", hover_event: { action: "show_text", value: "Toggle value?" }, click_event: { action: "run_command", command: "/trigger goldark.settings set 1002" } } ] }, "\n\n", \
    { text: "[ Reset All Settings ]", color: "red", hover_event: { action: "show_text", value: [ { "text": "Resets the datapack's settings to their default values." }, "\n", { text: "Warning! This is an irreversible action!", color: "gold" } ] }, click_event: { action: "run_command", command: "/trigger goldark.settings set 9999" } }, "\n\n", \
    { text: "-----------------------------", color: "blue" } \
]


# Developers
$tellraw @s [ \
    { text: "---> ", color: "blue" }, { translate: "Settings: %s", color: "gray", with: [ { text: "Golden Arcane", color: "gold" } ] }, { text: " <---", color: "blue" }, "\n\n", \
    { text: "# ", color: "yellow" }, { translate: "Graphics: %s", color: "gray", hover_event: { action: "show_text", value: "Sets the datapack's effects' quality.\n\nFancy: All visual effects are displayed.\nFast: Some effects are diminished for higher performance." }, with: [ { text: "$(graphics)", color: "aqua", hover_event: { action: "show_text", value: "Toggle value?" }, click_event: { action: "run_command", command: "/trigger goldark.settings set 1001" } } ] }, "\n", \
    { text: "# ", color: "yellow" }, { translate: "Force Transformations: %s", color: "gray", hover_event: { action: "show_text", value: ["If true, Werewoof players transform on Full Moons", "\n", "so long as they have direct view to the sky."] }, with: [ { text: "$(werewoof_force_transform)", color: "aqua", hover_event: { action: "show_text", value: "Toggle value?" }, click_event: { action: "run_command", command: "/trigger goldark.settings set 1002" } } ] }, "\n\n", \
    { text: "# ", color: "yellow" }, { translate: "Debug Mode: %s", color: "gray", hover_event: { action: "show_text", value: [ { text: "Displays extra information, such as spells' range of effect and invisible entities' positions." }, "\n", { text: "Debug Feature: Not for regular gameplay usage.", color: "yellow" } ] }, with: [ { text: "$(debug_mode)", color: "aqua", hover_event: { action: "show_text", value: "Toggle value?" }, click_event: { action: "run_command", command: "/trigger goldark.settings set 2001" } } ] }, "\n", \
    { text: "# ", color: "yellow" }, { translate: "Verbose Mode: %s", color: "gray", hover_event: { action: "show_text", value: [ { text: "Sends log messages in chat from core functions of the datapack." }, "\n", { text: "Debug Feature: Not for regular gameplay usage.", color: "yellow" } ] }, with: [ { text: "$(verbose_mode)", color: "aqua", hover_event: { action: "show_text", value: "Toggle value?" }, click_event: { action: "run_command", command: "/trigger goldark.settings set 2002" } } ] }, "\n\n", \
    { text: "[ Reset All Settings ]", color: "red", hover_event: { action: "show_text", value: [ { "text": "Resets the datapack's settings to their default values." }, "\n", { text: "Warning! This is an irreversible action!", color: "gold" } ] }, click_event: { action: "run_command", command: "/trigger goldark.settings set 9999" } }, "\n\n", \
    { text: "-----------------------------", color: "blue" } \
]