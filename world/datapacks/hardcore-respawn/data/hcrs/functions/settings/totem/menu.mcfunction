###############################
# HARDCORE RESPAWN by Dahson
# Special Thanks to VoidsEdge
# APRIL 12 2020 / DECEMBER 6 2021
###############################
tellraw @s ["",{"text":"\n"},{"text":"Totem Drop Rate","bold":true,"underlined":true,"color":"gold"}]
tellraw @s ["",{"text":"\n"},{"text":"Determines the rate at which Totems and Evoker Heads drop from Evokers","color":"white"}]

#Easy
execute unless score hcrsDummy hcrsTotemRate matches ..0 run tellraw @s ["",{"text":"\n\u25c6 "},{"text":"Easy","underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/function hcrs:settings/totem/easy"},"hoverEvent":{"action":"show_text","value":"100% Totems"}},{"text":"\nRecommended if Raids are disabled","color":"white"}]
execute if score hcrsDummy hcrsTotemRate matches ..0 run tellraw @s ["",{"text":"\n\u25c6 "},{"text":"Easy","bold":true,"underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/function hcrs:settings/totem/easy"},"hoverEvent":{"action":"show_text","value":"Recommended if Raids are disabled"}},{"text":"\nRecommended if Raids are disabled","color":"white"}]

#Medium
execute unless score hcrsDummy hcrsTotemRate matches 1 run tellraw @s ["",{"text":"\n\u25c6 "},{"text":"Medium","underlined":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function hcrs:settings/totem/medium"},"hoverEvent":{"action":"show_text","value":"50% Totems\n50% Evoker Heads"}}]
execute if score hcrsDummy hcrsTotemRate matches 1 run tellraw @s ["",{"text":"\n\u25c6 "},{"text":"Medium","bold":true,"underlined":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function hcrs:settings/totem/medium"},"hoverEvent":{"action":"show_text","value":"50% Totems\n50% Evoker Heads"}}]

#Hard
execute unless score hcrsDummy hcrsTotemRate matches 2 run tellraw @s ["",{"text":"\n\u25c6 "},{"text":"Hard","underlined":true,"color":"red","clickEvent":{"action":"run_command","value":"/function hcrs:settings/totem/hard"},"hoverEvent":{"action":"show_text","value":"33% Totems\n33% Evoker Heads\n33% Nothing"}}]
execute if score hcrsDummy hcrsTotemRate matches 2 run tellraw @s ["",{"text":"\n\u25c6 "},{"text":"Hard","bold":true,"underlined":true,"color":"red","clickEvent":{"action":"run_command","value":"/function hcrs:settings/totem/hard"},"hoverEvent":{"action":"show_text","value":"33% Totems\n33% Evoker Heads\n33% Nothing"}}]

#Very Hard
execute unless score hcrsDummy hcrsTotemRate matches 3 run tellraw @s ["",{"text":"\n\u25c6 "},{"text":"Very Hard","underlined":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/function hcrs:settings/totem/very_hard"},"hoverEvent":{"action":"show_text","value":"20% Totems\n20% Evoker Heads\n60% Nothing"}}]
execute if score hcrsDummy hcrsTotemRate matches 3 run tellraw @s ["",{"text":"\n\u25c6 "},{"text":"Very Hard","bold":true,"underlined":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/function hcrs:settings/totem/very_hard"},"hoverEvent":{"action":"show_text","value":"20% Totems\n20% Evoker Heads\n60% Nothing"}}]

#Brutal
execute unless score hcrsDummy hcrsTotemRate matches 4 run tellraw @s ["",{"text":"\n\u25c6 "},{"text":"Brutal","underlined":true,"color":"gray","clickEvent":{"action":"run_command","value":"/function hcrs:settings/totem/brutal"},"hoverEvent":{"action":"show_text","value":"0% Totems\n10% Evoker Heads\n90% Nothing"}}]
execute if score hcrsDummy hcrsTotemRate matches 4 run tellraw @s ["",{"text":"\n\u25c6 "},{"text":"Brutal","bold":true,"underlined":true,"color":"gray","clickEvent":{"action":"run_command","value":"/function hcrs:settings/totem/brutal"},"hoverEvent":{"action":"show_text","value":"0% Totems\n10% Evoker Heads\n90% Nothing"}}]

#Back
tellraw @s ["",{"text":"\nBack to "},{"text":"Settings","underlined":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/function hcrs:settings/settings"}}]