###############################
# HARDCORE RESPAWN by Dahson
# Special Thanks to VoidsEdge
# NOVEMBER 5 2019 / DECEMBER 6 2021
###############################
tellraw @s ["",{"text":"\n"},{"text":"Limited Revives","bold":true,"underlined":true,"color":"dark_green"}]
tellraw @s ["",{"text":"\n"},{"text":"Determines if there is a limit on how many times a player can be revived","color":"white"}]

# Enabled
execute unless score hcrsDummy hcrsRevive matches 1.. run tellraw @s ["",{"text":"\n"},{"text":"\u25c6 ","color":"white"},{"text":"Enabled","underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/function hcrs:settings/revive/enable"},"hoverEvent":{"action":"show_text","contents":{"text":"Revives are limited"}}}]
execute if score hcrsDummy hcrsRevive matches 1.. run tellraw @s ["",{"text":"\n"},{"text":"\u25c6 ","color":"white"},{"text":"Enabled","underlined":true,"bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/function hcrs:settings/revive/enable"},"hoverEvent":{"action":"show_text","contents":{"text":"Revives are limited"}}}]

# Disabled
execute unless score hcrsDummy hcrsRevive matches 1.. run tellraw @s ["",{"text":"\n"},{"text":"\u25c6 ","color":"white"},{"text":"Disabled","bold":true,"underlined":true,"color":"red","clickEvent":{"action":"run_command","value":"/function hcrs:settings/revive/disable"},"hoverEvent":{"action":"show_text","contents":{"text":"Revives are unlimited"}}}]
execute if score hcrsDummy hcrsRevive matches 1.. run tellraw @s ["",{"text":"\n"},{"text":"\u25c6 ","color":"white"},{"text":"Disabled","underlined":true,"color":"red","clickEvent":{"action":"run_command","value":"/function hcrs:settings/revive/disable"},"hoverEvent":{"action":"show_text","contents":{"text":"Revives are unlimited"}}}]

# Max revive
tellraw @s ["",{"text":"\n"},{"text":"Current Max Revives: ","color":"gold"},{"score":{"name":"hcrsDummy","objective":"hcrsMaxRevive"},"bold":true,"color":"yellow"}]
tellraw @s ["",{"text":"\n"},{"text":"\u25c6 ","color":"white"},{"text":"Set Max Revives","underlined":true,"color":"green","clickEvent":{"action":"suggest_command","value":"/scoreboard players set hcrsDummy hcrsMaxRevive "}}]

tellraw @s ["",{"text":"\nBack to "},{"text":"Settings","underlined":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/function hcrs:settings/settings"}}]