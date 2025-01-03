###############################
# HARDCORE RESPAWN by Dahson
# Special Thanks to VoidsEdge
# APRIL 12 2020 / DECEMBER 6 2021
###############################
tellraw @s ["",{"text":"\n"},{"text":"Shrine Permissions","bold":true,"underlined":true,"color":"green"}]
tellraw @s ["",{"text":"\n"},{"text":"Determines if players can create and/or destory shrines in survival","color":"white"}]

# Create Only
execute unless score hcrsDummy hcrsSurvShrine matches 2.. run tellraw @s ["",{"text":"\n\u25c6 "},{"text":"Create Only","underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/function hcrs:settings/shrine_perm/create"},"hoverEvent":{"action":"show_text","value":"Great for griefer prevention"}},{"text":" - Players can create shrines, but an Admin is required to remove them","color":"white"}]
execute if score hcrsDummy hcrsSurvShrine matches 2.. run tellraw @s ["",{"text":"\n\u25c6 "},{"text":"Create Only","bold":true,"underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/function hcrs:settings/shrine_perm/create"},"hoverEvent":{"action":"show_text","value":"Great for griefer prevention"}},{"text":" - Players can create shrines, but an Admin is required to remove them","color":"white"}]

# Create Destroy
execute unless score hcrsDummy hcrsSurvShrine matches 1 run tellraw @s ["",{"text":"\n\u25c6 "},{"text":"Create & Destory","underlined":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function hcrs:settings/shrine_perm/create_destroy"},"hoverEvent":{"action":"show_text","value":"Complete player freedom"}},{"text":" - Players can both create and destory shrines","color":"white"}]
execute if score hcrsDummy hcrsSurvShrine matches 1 run tellraw @s ["",{"text":"\n\u25c6 "},{"text":"Create & Destory","bold":true,"underlined":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function hcrs:settings/shrine_perm/create_destroy"},"hoverEvent":{"action":"show_text","value":"Complete player freedom"}},{"text":" - Players can both create and destory shrines","color":"white"}]

# Admin Only
execute unless score hcrsDummy hcrsSurvShrine matches ..0 run tellraw @s ["",{"text":"\n\u25c6 "},{"text":"Admin Only","underlined":true,"color":"red","clickEvent":{"action":"run_command","value":"/function hcrs:settings/shrine_perm/admin"},"hoverEvent":{"action":"show_text","value":"You have complete control of shrine creation / destruction"}},{"text":" - An Admin is required to both create and destory shrines","color":"white"}]
execute if score hcrsDummy hcrsSurvShrine matches ..0 run tellraw @s ["",{"text":"\n\u25c6 "},{"text":"Admin Only","bold":true,"underlined":true,"color":"red","clickEvent":{"action":"run_command","value":"/function hcrs:settings/shrine_perm/admin"},"hoverEvent":{"action":"show_text","value":"You have complete control of shrine creation / destruction"}},{"text":" - An Admin is required to both create and destory shrines","color":"white"}]

# Back
tellraw @s ["",{"text":"\nBack to "},{"text":"Settings","underlined":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/function hcrs:settings/settings"}}]