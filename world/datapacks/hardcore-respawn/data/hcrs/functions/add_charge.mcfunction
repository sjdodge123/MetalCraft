###############################
# HARDCORE RESPAWN by Dahson
# Special Thanks to VoidsEdge
# OCTOBER 23 2019 / OCTOBER 23 2020
###############################
scoreboard players add @s hcrsCharges 1
execute at @s run playsound minecraft:block.respawn_anchor.charge master @a[distance=..32]
execute at @s run kill @e[type=item,distance=..2,nbt={Item:{id:"minecraft:totem_of_undying",Count:1b}},limit=1]