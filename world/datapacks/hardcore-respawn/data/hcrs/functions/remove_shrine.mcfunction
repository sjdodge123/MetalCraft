###############################
# HARDCORE RESPAWN by Dahson
# Special Thanks to VoidsEdge
# APRIL 11 2020 / APRIL 13 2020
###############################
execute as @s unless entity @e[type=armor_stand,limit=1,distance=..8,tag=hcrsShrine] run tellraw @s {"text":"You must be within 8 blocks of a shrine to remove it.","bold":true,"color":"red"}
execute at @s if entity @e[type=armor_stand,limit=1,distance=..8,tag=hcrsShrine] as @e[type=armor_stand,limit=1,distance=..16,tag=hcrsShrine] run function hcrs:remove_shrine_dont_run