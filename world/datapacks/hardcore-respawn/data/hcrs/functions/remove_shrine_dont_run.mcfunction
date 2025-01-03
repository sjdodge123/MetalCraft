###############################
# HARDCORE RESPAWN by Dahson
# Special Thanks to VoidsEdge
# JUNE 1 2019 / APRIL 12 2020
###############################
execute at @s[type=armor_stand] run particle minecraft:explosion ~ ~ ~ 1 1 1 0 10 force @a
execute at @s[type=armor_stand] run playsound minecraft:entity.generic.explode block @a[distance=..32]
kill @s[type=armor_stand]
tellraw @a ["",{"text":"\nShrine Removed!","italic":true,"color":"green"}]