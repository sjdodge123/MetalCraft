###############################
# HARDCORE RESPAWN by Dahson
# Special Thanks to VoidsEdge
# JUNE 1 2019 / DECEMBER 31 2021
###############################
scoreboard objectives remove hcrsDeadCheck
scoreboard objectives remove hcrsTimer
scoreboard objectives remove hcrsRGP
scoreboard objectives remove hcrsSurvShrine
scoreboard objectives remove hcrsTotemRate
scoreboard objectives remove hcrsInit
scoreboard objectives remove hcrsShrinePrtcl
scoreboard objectives remove hcrsUpdteCheck
scoreboard objectives remove hcrsCharge
scoreboard objectives remove hcrsCharges
scoreboard objectives remove hcrsMaxCharge
scoreboard objectives remove hcrsRevive
scoreboard objectives remove hcrsRevives
scoreboard objectives remove hcrsMaxRevive
scoreboard objectives remove hcrsRevivesLeft
scoreboard objectives remove hcrsShrineCost
scoreboard objectives remove hcrsInfo
execute at @e[type=armor_stand,tag=hcrsShrine] run particle minecraft:explosion ~ ~ ~ 1 1 1 0 10 force @a
kill @e[type=armor_stand,tag=hcrsShrine]
tag @a remove hcrsAdmin
tag @a remove hcrsAdminBook
tag @a remove hcrsGuide
tag @a remove hcrsPermDead
tellraw @s ["",{"text":"Hardcore Respawn scoreboards removed...\nRespawn Shrines removed...","color":"green"},{"text":"\n\n"},{"text":"Any shrines in unloaded chunks may still exsist however...\nStand near the shrines and run ","color":"light_purple"},{"text":"this command","underlined":true,"color":"light_purple","clickEvent":{"action":"run_command","value":"/function hcrs:remove_shrine_check"}},{"text":" again to remove them.","color":"light_purple"},{"text":"\n\n"},{"text":"Once you are sure all shrines are removed you may delete the data pack from the world folder.","color":"gold"},{"text":"\n\n"},{"text":"Failure to remove shrines will result in invisable armor stands being left behind.","italic":true,"color":"red"}]
datapack disable "file/hardcore-respawn.zip"