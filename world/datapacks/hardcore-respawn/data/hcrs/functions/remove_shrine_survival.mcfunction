###############################
# HARDCORE RESPAWN by Dahson
# Special Thanks to VoidsEdge
# JUNE 1 2019 / DECEMBER 5 2021
###############################
#Pretty Stuff
execute at @s run particle minecraft:explosion ~ ~ ~ 1 1 1 0 10 force @a
execute at @s run playsound minecraft:entity.generic.explode block @a[distance=..32]
#Kill TNT
execute at @s run kill @e[type=item,distance=..2,nbt={Item:{id:"minecraft:tnt",Count:1b}},limit=1]
#Refund Diamond
execute if score hcrsDummy hcrsShrineCost matches 0 at @s run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:diamond",Count:3b}}
#Refund Emerald
execute if score hcrsDummy hcrsShrineCost matches 1 at @s run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:emerald",Count:3b}}
#Refund Copper
execute if score hcrsDummy hcrsShrineCost matches 2 at @s run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:copper_ingot",Count:3b}}
#Refund Gold
execute if score hcrsDummy hcrsShrineCost matches 3 at @s run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:gold_ingot",Count:3b}}
#Refund Netherite
execute if score hcrsDummy hcrsShrineCost matches 4 at @s run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:netherite_ingot",Count:3b}}
#Kill Armor Stand
kill @s[type=armor_stand]