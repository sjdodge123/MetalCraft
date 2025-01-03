###############################
# HARDCORE RESPAWN by Dahson
# Special Thanks to VoidsEdge
# OCTOBER 23 2019 / DECEMBER 6 2021
###############################
tellraw @s ["",{"text":"\n"},{"text":"Shrine Charging","bold":true,"underlined":true,"color":"yellow"}]
tellraw @s ["",{"text":"\n"},{"text":"Determines if shrines can store totems inside them","color":"white"}]

# Enabled
execute unless score hcrsDummy hcrsCharge matches 1.. run tellraw @s ["",{"text":"\n"},{"text":"\u25c6 ","color":"white"},{"text":"Enabled","underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/function hcrs:settings/charge/enable"},"hoverEvent":{"action":"show_text","contents":{"text":"Shrines can store totems"}}}]
execute if score hcrsDummy hcrsCharge matches 1.. run tellraw @s ["",{"text":"\n"},{"text":"\u25c6 ","color":"white"},{"text":"Enabled","underlined":true,"bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/function hcrs:settings/charge/enable"},"hoverEvent":{"action":"show_text","contents":{"text":"Shrines can store totems"}}}]

# Disabled
execute unless score hcrsDummy hcrsCharge matches 1.. run tellraw @s ["",{"text":"\n"},{"text":"\u25c6 ","color":"white"},{"text":"Disabled","bold":true,"underlined":true,"color":"red","clickEvent":{"action":"run_command","value":"/function hcrs:settings/charge/disable"},"hoverEvent":{"action":"show_text","contents":{"text":"Shrines can not store totems"}}}]
execute if score hcrsDummy hcrsCharge matches 1.. run tellraw @s ["",{"text":"\n"},{"text":"\u25c6 ","color":"white"},{"text":"Disabled","underlined":true,"color":"red","clickEvent":{"action":"run_command","value":"/function hcrs:settings/charge/disable"},"hoverEvent":{"action":"show_text","contents":{"text":"Shrines can not store totems"}}}]

# Max Charge
tellraw @s ["",{"text":"\n"},{"text":"Current Max Charge: ","color":"gold"},{"score":{"name":"hcrsDummy","objective":"hcrsMaxCharge"},"bold":true,"color":"yellow"}]
tellraw @s ["",{"text":"\n"},{"text":"\u25c6 ","color":"white"},{"text":"Set Max Charge","underlined":true,"color":"yellow","clickEvent":{"action":"suggest_command","value":"/scoreboard players set hcrsDummy hcrsMaxCharge "}}]

tellraw @s ["",{"text":"\nBack to "},{"text":"Settings","underlined":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/function hcrs:settings/settings"}}]