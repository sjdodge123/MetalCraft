###############################
# HARDCORE RESPAWN by Dahson
# Special Thanks to VoidsEdge
# DECEMBER 31 2021 / JANUARY 1 2022
###############################
# Limited Off
execute if score hcrsDummy hcrsRevive matches 0 run tellraw @s ["",{"text":"You have ","color":"aqua"},{"text":"Unlimited","bold":true,"color":"yellow"},{"text":" revives!","color":"aqua"}]
# Calculate RevivesLeft
execute if score hcrsDummy hcrsRevive matches 1 run scoreboard players operation @s hcrsRevivesLeft = hcrsDummy hcrsMaxRevive
execute if score hcrsDummy hcrsRevive matches 1 run scoreboard players operation @s hcrsRevivesLeft -= @s hcrsRevives
# Limited On
execute if score hcrsDummy hcrsRevive matches 1 if score @s hcrsRevivesLeft matches 2.. run tellraw @s ["",{"text":"You have ","color":"aqua"},{"score":{"name":"@s","objective":"hcrsRevivesLeft"},"bold":true,"color":"yellow"},{"text":" revives left!","color":"aqua"}]
execute if score hcrsDummy hcrsRevive matches 1 if score @s hcrsRevivesLeft matches 1 run tellraw @s ["",{"text":"You have ","color":"yellow"},{"text":"1 ","bold":true,"color":"red"},{"text":"revive left!!!","color":"yellow"}]
execute if score hcrsDummy hcrsRevive matches 1 if score @s hcrsRevivesLeft matches ..0 run tellraw @s ["",{"text":"You have no revives left!!","bold":true,"color":"red"},{"text":" Next death is ","color":"white"},{"text":"FINAL!!!","bold":true,"color":"dark_red"}]
# Reset Score
scoreboard players set @s hcrsInfo 0