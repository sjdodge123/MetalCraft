###############################
# HARDCORE RESPAWN by Dahson
# Special Thanks to VoidsEdge
# DECEMBER 31 2021 / JANUARY 1 2022
###############################
tellraw @s ["","To use a ",{"text":"Shrine ","color":"aqua"},"throw a ",{"text":"Totem","color":"yellow"}," onto it while a ",{"text":"Dead Player ","color":"green"},"is within ",{"text":"8 blocks ","color":"red"},"of the ",{"text":"Shrine","color":"aqua"},"."," Particles will appear around the ",{"text":"Dead Player ","color":"green"},"when they are in range."]
execute if score hcrsDummy hcrsCharge matches 1 run tellraw @s ["","If a ",{"text":"Dead Player ","color":"green"},"is not within range the ",{"text":"Shrine ","color":"aqua"},"will store a ",{"text":"Charge ","color":"gold"},"and the ",{"text":"Shrine ","color":"aqua"},"will activate the next time a ",{"text":"Dead Player","color":"green"}," comes within range. Each ",{"text":"Shrine ","color":"aqua"},"can hold a maximum of ",{"score":{"name":"hcrsDummy","objective":"hcrsMaxCharge"},"color":"light_purple"},{"text":" Charges","color":"gold"},"."]
# Reset Info score
scoreboard players set @s hcrsInfo 0