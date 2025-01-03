###############################
# HARDCORE RESPAWN by Dahson
# Special Thanks to VoidsEdge
# APRIL 12 2020 / DECEMBER 6 2021
###############################
tellraw @s ["",{"text":"\n"},{"text":"Hardcore Respawn","bold":true,"color":"dark_red"},{"text":" v1.5","color":"green"},{"text":" Menu","bold":true,"color":"dark_purple"}]
tellraw @s ["",{"text":"\n"},{"text":"\u25c6 ","color":"white"},{"text":"Place Shrine","underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/function hcrs:place_shrine"},"hoverEvent":{"action":"show_text","value":"Places a Shrine where you stand"}}]
tellraw @s ["",{"text":"\n"},{"text":"\u25c6 ","color":"white"},{"text":"Remove Shrine","underlined":true,"color":"red","clickEvent":{"action":"run_command","value":"/function hcrs:remove_shrine"},"hoverEvent":{"action":"show_text","value":"Removes a Shrine within 8 blocks of you"}}]
tellraw @s ["",{"text":"\n\u25c6 "},{"text":"Give Admin Tag","underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function hcrs:give_admin_tag"},"hoverEvent":{"action":"show_text","value":"Allows you to leave spectator mode while dead"}}]
tellraw @s ["",{"text":"\n\u25c6 "},{"text":"Remove Admin Tag","underlined":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/function hcrs:remove_admin_tag"},"hoverEvent":{"action":"show_text","value":"Removes the Admin tag from yourself. This will force you back into spectator if you try to leave it while dead."}}]
tellraw @s ["",{"text":"\n\u25c6 "},{"text":"Settings","underlined":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/function hcrs:settings/settings"},"hoverEvent":{"action":"show_text","value":"Configure Settings for Hardcore Respawn"}}]