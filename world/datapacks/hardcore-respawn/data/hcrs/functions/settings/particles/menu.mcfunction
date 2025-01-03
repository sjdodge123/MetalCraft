###############################
# HARDCORE RESPAWN by Dahson
# Special Thanks to VoidsEdge
# APRIL 12 2020 / DECEMBER 6 2021
###############################
tellraw @s ["",{"text":"\n"},{"text":"Shrine Particles","bold":true,"underlined":true,"color":"light_purple"}]
tellraw @s ["",{"text":"\n"},{"text":"Determines if the shrine's particles should obey user settings","color":"white"}]

# Forced
execute unless score hcrsDummy hcrsShrinePrtcl matches 1.. run tellraw @s ["",{"text":"\n"},{"text":"\u25c6 ","color":"white"},{"text":"Forced","underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/function hcrs:settings/particles/forced"},"hoverEvent":{"action":"show_text","value":"Player can always see the shrine particles if they within range"}},{"text":" - Ignores the player's particle settings","color":"white"}]
execute if score hcrsDummy hcrsShrinePrtcl matches 1.. run tellraw @s ["",{"text":"\n"},{"text":"\u25c6 ","color":"white"},{"text":"Forced","bold":true,"underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/function hcrs:settings/particles/forced"},"hoverEvent":{"action":"show_text","value":"Player can always see the shrine particles if they within range"}},{"text":" - Ignores the player's particle settings","color":"white"}]

# Normal
execute unless score hcrsDummy hcrsShrinePrtcl matches ..0 run tellraw @s ["",{"text":"\n"},{"text":"\u25c6 ","color":"white"},{"text":"Normal","underlined":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/function hcrs:settings/particles/normal"},"hoverEvent":{"action":"show_text","value":"Players will not be able to see particles if they have particles set to \"Minimum\""}},{"text":" - Obeys the player's particle settings","color":"white"}]
execute if score hcrsDummy hcrsShrinePrtcl matches ..0 run tellraw @s ["",{"text":"\n"},{"text":"\u25c6 ","color":"white"},{"text":"Normal","bold":true,"underlined":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/function hcrs:settings/particles/normal"},"hoverEvent":{"action":"show_text","value":"Players will not be able to see particles if they have particles set to \"Minimum\""}},{"text":" - Obeys the player's particle settings","color":"white"}]

#Back
tellraw @s ["",{"text":"\nBack to "},{"text":"Settings","underlined":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/function hcrs:settings/settings"}}]