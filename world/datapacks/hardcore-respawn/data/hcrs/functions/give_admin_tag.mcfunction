###############################
# HARDCORE RESPAWN by Dahson
# Special Thanks to VoidsEdge
# APRIL 13 2020 / APRIL 13 2020
###############################
tag @s[tag=!hcrsAdmin] add hcrsAdmin
tellraw @s[tag=hcrsAdmin] ["",{"text":"\nYou now have or already have the "},{"text":"Admin Tag","color":"gold"}]
tellraw @s[tag=!hcrsAdmin] ["",{"text":"\n"},{"text":"Something went wrong!","color":"red"},{"text":" You do "},{"text":"not","bold":true,"underlined":true,"color":"red"},{"text":" have the "},{"text":"Admin Tag","color":"gold"},{"text":". Try removeing other tags you do not need.","color":"white"}]