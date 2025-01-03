###############################
# HARDCORE RESPAWN by Dahson
# Special Thanks to VoidsEdge
# APRIL 12 2020 / DECEMBER 6 2021
###############################
tellraw @s ["",{"text":"\n"},{"text":"Ghost Particles","bold":true,"underlined":true,"color":"dark_aqua"}]
tellraw @s ["",{"text":"\n"},{"text":"Determines if dead players sudo-randomly emit particles","color":"white"}]

# Enabled
execute unless score hcrsDummy hcrsRGP matches 1.. run tellraw @s ["",{"text":"\n"},{"text":"\u25c6 ","color":"white"},{"text":"Enabled","underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/function hcrs:settings/ghost/enable"},"hoverEvent":{"action":"show_text","value":"oOoOo Spooky"}}]
execute if score hcrsDummy hcrsRGP matches 1.. run tellraw @s ["",{"text":"\n"},{"text":"\u25c6 ","color":"white"},{"text":"Enabled","bold":true,"underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/function hcrs:settings/ghost/enable"},"hoverEvent":{"action":"show_text","value":"oOoOo Spooky"}}]

# Disabled
execute unless score hcrsDummy hcrsRGP matches ..0 run tellraw @s ["",{"text":"\n"},{"text":"\u25c6 ","color":"white"},{"text":"Disabled","underlined":true,"color":"red","clickEvent":{"action":"run_command","value":"/function hcrs:settings/ghost/disable"},"hoverEvent":{"action":"show_text","value":"Ghosts don't exist"}}]
execute if score hcrsDummy hcrsRGP matches ..0 run tellraw @s ["",{"text":"\n"},{"text":"\u25c6 ","color":"white"},{"text":"Disabled","bold":true,"underlined":true,"color":"red","clickEvent":{"action":"run_command","value":"/function hcrs:settings/ghost/disable"},"hoverEvent":{"action":"show_text","value":"Ghosts don't exist"}}]

tellraw @s ["",{"text":"\nBack to "},{"text":"Settings","underlined":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/function hcrs:settings/settings"}}]