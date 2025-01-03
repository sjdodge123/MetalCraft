###############################
# HARDCORE RESPAWN by Dahson
# Special Thanks to VoidsEdge
# JUNE 1 2019 / DECEMBER 31 2021
###############################
# Loaded Text
tellraw @a ["",{"text":"\n"},{"text":"Hardcore Respawn","bold":true,"underlined":true,"color":"dark_red"},{"text":" v1.5","color":"green"}]
tellraw @a ["",{"text":"\n"},{"text":"A Datapack by","color":"aqua"},{"text":" Dahson","bold":true,"color":"gold"}]
tellraw @a ["",{"text":"Specail thanks to ","color":"green"},{"text":"VoidsEdge","bold":true,"color":"light_purple"}]
tellraw @a ["",{"text":"And the ","color":"green"},{"text":"Play Testers","bold":true,"italic":true,"color":"yellow","hoverEvent":{"action":"show_text","value":"Aelteria, ASC_Fennec, CDTwinZ, Chips____, RestedEXP, SnowyUmbreon, somekindofbox, & supahvaporeon"}}]
tellraw @a ["",{"text":"\n"},{"text":"Menu","bold":true,"underlined":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function hcrs:menu"},"hoverEvent":{"action":"show_text","value":"Click here for the Menu"}}]

# Initiate Scoreboards
scoreboard objectives add hcrsDeadCheck deathCount
scoreboard objectives add hcrsTimer dummy
scoreboard objectives add hcrsRGP dummy
scoreboard objectives add hcrsSurvShrine dummy
scoreboard objectives add hcrsTotemRate dummy
scoreboard objectives add hcrsShrinePrtcl dummy
scoreboard objectives add hcrsCharge dummy
scoreboard objectives add hcrsCharges dummy
scoreboard objectives add hcrsMaxCharge dummy
scoreboard objectives add hcrsRevive dummy
scoreboard objectives add hcrsRevives dummy
scoreboard objectives add hcrsMaxRevive dummy
scoreboard objectives add hcrsRevivesLeft dummy
scoreboard objectives add hcrsShrineCost dummy
scoreboard objectives add hcrsInfo trigger

# Set Default Settings (First time only)
execute unless score hcrsDummy hcrsRGP matches 0.. run scoreboard players set hcrsDummy hcrsRGP 1
execute unless score hcrsDummy hcrsSurvShrine matches 0.. run scoreboard players set hcrsDummy hcrsSurvShrine 1
execute unless score hcrsDummy hcrsTotemRate matches 0.. run scoreboard players set hcrsDummy hcrsTotemRate 1
execute unless score hcrsDummy hcrsShrinePrtcl matches 0.. run scoreboard players set hcrsDummy hcrsShrinePrtcl 1
execute unless score hcrsDummy hcrsCharge matches 0.. run scoreboard players set hcrsDummy hcrsCharge 1
execute unless score hcrsDummy hcrsMaxCharge matches 0.. run scoreboard players set hcrsDummy hcrsMaxCharge 3
execute unless score hcrsDummy hcrsMaxRevive matches 1.. run scoreboard players set hcrsDummy hcrsMaxRevive 5
execute unless score hcrsDummy hcrsShrineCost matches 0.. run scoreboard players set hcrsDummy hcrsShrineCost 0