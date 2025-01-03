###############################
# HARDCORE RESPAWN by Dahson
# Special Thanks to VoidsEdge
# DECEMBER 31 2021 / JANUARY 1 2022
###############################
# Admin Only
execute if score hcrsDummy hcrsSurvShrine matches ..0 run tellraw @s ["","You must find a ",{"text":"Shrine","color":"aqua"}," somewhere in the world. Your ",{"text":"Server Admin ","color":"red"},"should have placed one somewhere.","\n","If you are having trouble locating a ",{"text":"Shrine","color":"aqua"},", contact your ",{"text":"Server Admin ","color":"red"},"for more information."]
# Shrine Explanation
execute if score hcrsDummy hcrsSurvShrine matches 1.. run tellraw @p ["","To create a ",{"text":"Shrine ","color":"aqua"},"you will need to place a ",{"text":"Lapis Block ","color":"blue"},"on top of a ",{"text":"Gold Block ","color":"gold"},"and throw the ",{"text":"Catalyst ","color":"dark_purple"},"on top. The ",{"text":"Catalyst ","color":"dark_purple"},"is labeled in the diagram below with a ◆ and must be tossed as a single item."]
# Shrine Catalyst
execute if score hcrsDummy hcrsSurvShrine matches 1.. if score hcrsDummy hcrsShrineCost matches 0 run tellraw @p ["",{"text":"      ◆ ","color":"aqua"},{"text":"Diamond Block","color":"aqua"}," (Single Item)"]
execute if score hcrsDummy hcrsSurvShrine matches 1.. if score hcrsDummy hcrsShrineCost matches 1 run tellraw @p ["",{"text":"      ◆ ","color":"green"},{"text":"Emerald Block","color":"green"}," (Single Item)"]
execute if score hcrsDummy hcrsSurvShrine matches 1.. if score hcrsDummy hcrsShrineCost matches 2 run tellraw @p ["",{"text":"      ◆ ","color":"#FF9500"},{"text":"Copper Block","color":"#FF9500"}," (Single Item)"]
execute if score hcrsDummy hcrsSurvShrine matches 1.. if score hcrsDummy hcrsShrineCost matches 3 run tellraw @p ["",{"text":"      ◆ ","color":"gold"},{"text":"Gold Block","color":"gold"}," (Single Item)"]
execute if score hcrsDummy hcrsSurvShrine matches 1.. if score hcrsDummy hcrsShrineCost matches 4 run tellraw @p ["",{"text":"      ◆ ","color":"gray"},{"text":"Netherite Block","color":"gray"}," (Single Item)"]
# Shrine Base
execute if score hcrsDummy hcrsSurvShrine matches 1.. run tellraw @p ["",{"text":"     ▉ ","bold":true,"color":"blue"},{"text":"Lapis Block ","color":"blue"},"(Placed)","\n",{"text":"     ▉ ","bold":true,"color":"gold"},{"text":"Gold Block ","color":"gold"},"(Placed)"]
execute if score hcrsDummy hcrsSurvShrine matches 1.. run tellraw @p ["","After the ",{"text":"Shrine ","color":"aqua"},"is created you may remove the ",{"text":"Gold ","color":"gold"},"& ",{"text":"Lapis ","color":"blue"},"blocks and build whatever you'd like around the ",{"text":"Shrine","color":"aqua"},"."]
# Shrine Destory
execute if score hcrsDummy hcrsSurvShrine matches 1 run tellraw @s ["","A ",{"text":"Shrine","color":"aqua"}," can be ",{"text":"destroyed ","color":"red"},"by tossing a single piece of ",{"text":"TNT","color":"red"}," (as an ",{"text":"Item","color":"yellow"},") ","onto the ",{"text":"Shrine","color":"aqua"}," and you will get a partial refund."]
# Reset Info score
scoreboard players set @s hcrsInfo 0