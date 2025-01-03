###############################
# HARDCORE RESPAWN by Dahson
# Special Thanks to VoidsEdge
# APRIL 13 2020 / APRIL 13 2020
###############################
tag @s[tag=hcrsAdmin] remove hcrsAdmin
tellraw @s[tag=!hcrsAdmin] ["",{"text":"\n"},{"text":"Admin Tag","color":"gold"},{"text":" removed!"}]
tellraw @s[tag=hcrsAdmin] ["",{"text":"\n"},{"text":"Something went wrong!","color":"red"},{"text":" You still have the ","color":"white"},{"text":"Admin Tag!","color":"gold"}]