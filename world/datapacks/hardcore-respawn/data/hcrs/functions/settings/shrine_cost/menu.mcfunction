###############################
# HARDCORE RESPAWN by Dahson
# Special Thanks to VoidsEdge
# DECEMBER 6 2021 / DECEMBER 6 2021
###############################
tellraw @s ["",{"text":"\n"},{"text":"Shrine Cost","bold":true,"underlined":true,"color":"red"}]
tellraw @s ["",{"text":"\n"},{"text":"Determines what item is thrown to create a shrine","color":"white"}]

#Diamond
execute unless score hcrsDummy hcrsShrineCost matches ..0 run tellraw @s ["",{"text":"\n\u25c6 "},{"text":"Diamonds","underlined":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/function hcrs:settings/shrine_cost/diamond"},"hoverEvent":{"action":"show_text","value":"Shrine costs a Diamond Block"}}]
execute if score hcrsDummy hcrsShrineCost matches ..0 run tellraw @s ["",{"text":"\n\u25c6 "},{"text":"Diamonds","bold":true,"underlined":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/function hcrs:settings/shrine_cost/diamond"},"hoverEvent":{"action":"show_text","value":"Shrine costs a Diamond Block"}}]

#Emerald
execute unless score hcrsDummy hcrsShrineCost matches 1 run tellraw @s ["",{"text":"\n\u25c6 "},{"text":"Emeralds","underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/function hcrs:settings/shrine_cost/emerald"},"hoverEvent":{"action":"show_text","value":"Shrine costs an Emerald Block"}}]
execute if score hcrsDummy hcrsShrineCost matches 1 run tellraw @s ["",{"text":"\n\u25c6 "},{"text":"Emeralds","bold":true,"underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/function hcrs:settings/shrine_cost/emerald"},"hoverEvent":{"action":"show_text","value":"Shrine costs an Emerald Block"}}]

#Copper
execute unless score hcrsDummy hcrsShrineCost matches 2 run tellraw @s ["",{"text":"\n\u25c6 "},{"text":"Copper","underlined":true,"color":"#FF9500","clickEvent":{"action":"run_command","value":"/function hcrs:settings/shrine_cost/copper"},"hoverEvent":{"action":"show_text","value":"Shrine costs a Copper Block"}}]
execute if score hcrsDummy hcrsShrineCost matches 2 run tellraw @s ["",{"text":"\n\u25c6 "},{"text":"Copper","bold":true,"underlined":true,"color":"#FF9500","clickEvent":{"action":"run_command","value":"/function hcrs:settings/shrine_cost/copper"},"hoverEvent":{"action":"show_text","value":"Shrine costs a Copper Block"}}]

#Gold
execute unless score hcrsDummy hcrsShrineCost matches 3 run tellraw @s ["",{"text":"\n\u25c6 "},{"text":"Gold","underlined":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function hcrs:settings/shrine_cost/gold"},"hoverEvent":{"action":"show_text","value":"Shrine costs a Gold Block"}}]
execute if score hcrsDummy hcrsShrineCost matches 3 run tellraw @s ["",{"text":"\n\u25c6 "},{"text":"Very Hard","bold":true,"underlined":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function hcrs:settings/shrine_cost/gold"},"hoverEvent":{"action":"show_text","value":"Shrine costs a Gold Block"}}]

#Netherite
execute unless score hcrsDummy hcrsShrineCost matches 4 run tellraw @s ["",{"text":"\n\u25c6 "},{"text":"Netherite","underlined":true,"color":"gray","clickEvent":{"action":"run_command","value":"/function hcrs:settings/shrine_cost/netherite"},"hoverEvent":{"action":"show_text","value":"Shrine costs a Netherite Block"}}]
execute if score hcrsDummy hcrsShrineCost matches 4 run tellraw @s ["",{"text":"\n\u25c6 "},{"text":"Netherite","bold":true,"underlined":true,"color":"gray","clickEvent":{"action":"run_command","value":"/function hcrs:settings/shrine_cost/netherite"},"hoverEvent":{"action":"show_text","value":"Shrine costs a Netherite Block"}}]

#Back
tellraw @s ["",{"text":"\nBack to "},{"text":"Settings","underlined":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/function hcrs:settings/settings"}}]