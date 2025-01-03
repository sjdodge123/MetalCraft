###############################
# HARDCORE RESPAWN by Dahson
# Special Thanks to VoidsEdge
# DECEMBER 31 2021 / JANUARY 1 2022
###############################
# Totem carfting info
tellraw @s ["","Totems can be crafted using a ",{"text":"Player/Evoker Head","color":"green"},", ",{"text":"4 Gold Blocks","color":"gold"},", & ",{"text":"4 Diamond Blocks ","color":"aqua"},"in a shapeless recipe."]
# Player Head info
tellraw @s ["",{"text":"Player Heads ","color":"green"},"are dropped from ",{"text":"Players ","color":"green"},"when they die."]
# Evoker Drop Rate info
execute if score hcrsDummy hcrsTotemRate matches ..0 run tellraw @s ["",{"text":"Evoker Heads","color":"green"}," and ",{"text":"Totems ","color":"yellow"},"drop from ",{"text":"Evokers ","color":"aqua"},"at a rate of: ","\n",{"text":"Totems","color":"gold"},{"text":" 100%","color":"light_purple"},", ",{"text":"Evoker Heads ","color":"green"},{"text":"0%","color":"light_purple"}]
execute if score hcrsDummy hcrsTotemRate matches 1 run tellraw @s ["",{"text":"Evoker Heads","color":"green"}," and ",{"text":"Totems ","color":"yellow"},"drop from ",{"text":"Evokers ","color":"aqua"},"at a rate of: ","\n",{"text":"Totems","color":"gold"},{"text":" 50%","color":"light_purple"},", ",{"text":"Evoker Heads ","color":"green"},{"text":"50%","color":"light_purple"}]
execute if score hcrsDummy hcrsTotemRate matches 2 run tellraw @s ["",{"text":"Evoker Heads","color":"green"}," and ",{"text":"Totems ","color":"yellow"},"drop from ",{"text":"Evokers ","color":"aqua"},"at a rate of: ","\n",{"text":"Totems","color":"gold"},{"text":" 33.3%","color":"light_purple"},", ",{"text":"Evoker Heads ","color":"green"},{"text":"33.3%","color":"light_purple"}]
execute if score hcrsDummy hcrsTotemRate matches 3 run tellraw @s ["",{"text":"Evoker Heads","color":"green"}," and ",{"text":"Totems ","color":"yellow"},"drop from ",{"text":"Evokers ","color":"aqua"},"at a rate of: ","\n",{"text":"Totems","color":"gold"},{"text":" 20%","color":"light_purple"},", ",{"text":"Evoker Heads ","color":"green"},{"text":"20%","color":"light_purple"}]
execute if score hcrsDummy hcrsTotemRate matches 4.. run tellraw @s ["",{"text":"Evoker Heads","color":"green"}," and ",{"text":"Totems ","color":"yellow"},"drop from ",{"text":"Evokers ","color":"aqua"},"at a rate of: ","\n",{"text":"Totems","color":"gold"},{"text":" 0%","color":"light_purple"},", ",{"text":"Evoker Heads ","color":"green"},{"text":"10%","color":"light_purple"}]
# Reset Info score
scoreboard players set @s hcrsInfo 0