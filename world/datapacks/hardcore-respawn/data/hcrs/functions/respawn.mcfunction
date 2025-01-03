###############################
# HARDCORE RESPAWN by Dahson
# Special Thanks to VoidsEdge
# JUNE 1 2019 / NOVEMBER 5 2020
###############################
# Particles & Sound
execute at @e[type=armor_stand,tag=hcrsShrine,distance=..9,limit=1] run playsound minecraft:item.totem.use master @a[distance=..32]
execute if score hcrsDummy hcrsShrinePrtcl matches 1.. at @e[type=armor_stand,tag=hcrsShrine,distance=..9,limit=1] run particle poof ~ ~ ~ 0 0 0 1 1000 force
execute if score hcrsDummy hcrsShrinePrtcl matches ..0 at @e[type=armor_stand,tag=hcrsShrine,distance=..9,limit=1] run particle poof ~ ~ ~ 0 0 0 1 1000 normal

# Cost
execute if score hcrsDummy hcrsCharge matches 0 at @e[type=armor_stand,tag=hcrsShrine,distance=..9,limit=1] run kill @e[type=item,distance=..2,nbt={Item:{id:"minecraft:totem_of_undying",Count:1b}},limit=1]
execute if score hcrsDummy hcrsCharge matches 1 as @e[type=armor_stand,tag=hcrsShrine,distance=..9,limit=1] run scoreboard players remove @s hcrsCharges 1
tp @s @e[type=armor_stand,tag=hcrsShrine,distance=..9,limit=1]

# Respawn
scoreboard players set @s hcrsDeadCheck 0
gamemode survival @s

# Revives Left
execute if score hcrsDummy hcrsRevive matches 1 run scoreboard players add @s hcrsRevives 1
execute if score hcrsDummy hcrsRevive matches 1 run scoreboard players operation @s hcrsRevivesLeft = hcrsDummy hcrsMaxRevive
execute if score hcrsDummy hcrsRevive matches 1 run scoreboard players operation @s hcrsRevivesLeft -= @s hcrsRevives
execute if score hcrsDummy hcrsRevive matches 1 if score @s hcrsRevives >= hcrsDummy hcrsMaxRevive run tag @s add hcrsPermDead

# Text
execute if score hcrsDummy hcrsRevive matches 1 if score @s hcrsRevivesLeft matches 2.. run tellraw @s ["",{"text":"You have ","color":"aqua"},{"score":{"name":"@s","objective":"hcrsRevivesLeft"},"bold":true,"color":"yellow"},{"text":" revives left!","color":"aqua"}]
execute if score hcrsDummy hcrsRevive matches 1 if score @s hcrsRevivesLeft matches 1 run tellraw @s ["",{"text":"You have ","color":"yellow"},{"text":"1 ","bold":true,"color":"red"},{"text":"revive left!!!","color":"yellow"}]
execute if score hcrsDummy hcrsRevive matches 1 if score @s hcrsRevivesLeft matches ..0 run tellraw @s ["",{"text":"You have no revives left!!","bold":true,"color":"red"},{"text":" Next death is ","color":"white"},{"text":"FINAL!!!","bold":true,"color":"dark_red"}]