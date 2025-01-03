###############################
# HARDCORE RESPAWN by Dahson
# Special Thanks to VoidsEdge
# APRIL 12 2020 / DECEMBER 6 2021
###############################

tellraw @s ["",{"text":"\n"},{"text":"Settings","bold":true,"underlined":true,"color":"aqua"}]
tellraw @s ["",{"text":"\n"},{"text":"\u25c6 ","color":"white"},{"text":"Totem Drop Rate","underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function hcrs:settings/totem/menu"},"hoverEvent":{"action":"show_text","value":"Totem Drop Rate Settings"}}]
tellraw @s ["",{"text":"\n"},{"text":"\u25c6 ","color":"white"},{"text":"Shrine Charges","underlined":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function hcrs:settings/charge/menu"},"hoverEvent":{"action":"show_text","contents":{"text":"Shrine Charge Settings"}}}]
tellraw @s ["",{"text":"\n"},{"text":"\u25c6 ","color":"white"},{"text":"Limted Revives","underlined":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/function hcrs:settings/revive/menu"},"hoverEvent":{"action":"show_text","contents":{"text":"Limited Revive Settings"}}}]
tellraw @s ["",{"text":"\n"},{"text":"\u25c6 ","color":"white"},{"text":"Shrine Permissions","underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/function hcrs:settings/shrine_perm/menu"},"hoverEvent":{"action":"show_text","value":"Shrine Permission Settings"}}]
tellraw @s ["",{"text":"\n"},{"text":"\u25c6 ","color":"white"},{"text":"Shrine Particles","underlined":true,"color":"light_purple","clickEvent":{"action":"run_command","value":"/function hcrs:settings/particles/menu"},"hoverEvent":{"action":"show_text","value":"Shrine Particle Settings"}}]
tellraw @s ["",{"text":"\n"},{"text":"\u25c6 ","color":"white"},{"text":"Ghost Particles","underlined":true,"color":"dark_aqua","clickEvent":{"action":"run_command","value":"/function hcrs:settings/ghost/menu"},"hoverEvent":{"action":"show_text","value":"Ghost Particle Settings"}}]
tellraw @s ["",{"text":"\n"},{"text":"\u25c6 ","color":"white"},{"text":"Shrine Cost","underlined":true,"color":"red","clickEvent":{"action":"run_command","value":"/function hcrs:settings/shrine_cost/menu"},"hoverEvent":{"action":"show_text","value":"Shrine Cost Settings"}}]
tellraw @s ["",{"text":"\n"},{"text":"\u25c6 ","color":"white"},{"text":"Restore Defaults","underlined":true,"color":"blue","clickEvent":{"action":"run_command","value":"/function hcrs:settings/restore_defaults"},"hoverEvent":{"action":"show_text","value":"Restores the Default Settings"}}]
tellraw @s ["",{"text":"\n"},{"text":"\u25c6 ","color":"white"},{"text":"Uninstall","bold":true,"underlined":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/function hcrs:settings/uninstall_confirm"},"hoverEvent":{"action":"show_text","value":"Removes all shrines, tags, and scoreboards"}}]
tellraw @s ["",{"text":"\nBack to "},{"text":"Menu","underlined":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function hcrs:menu"}}]