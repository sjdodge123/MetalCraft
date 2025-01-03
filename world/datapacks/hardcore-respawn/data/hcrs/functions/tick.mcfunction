###############################
# HARDCORE RESPAWN by Dahson
# Special Thanks to VoidsEdge
# JUNE 1 2019 / DECEMBER 31 2021
###############################
# Timer tick & Reset
scoreboard players add @a[scores={hcrsDeadCheck=1..}] hcrsTimer 1
scoreboard players reset @a[scores={hcrsTimer=2000..}] hcrsTimer

# Reset PermDead Tag & Revive Count if Revive limits are disabled
execute unless score hcrsDummy hcrsRevive matches 1 run tag @a[tag=hcrsPermDead] remove hcrsPermDead
execute unless score hcrsDummy hcrsRevive matches 1 as @a[scores={hcrsRevives=1..}] run scoreboard players set @s hcrsRevives 0
execute if score hcrsDummy hcrsRevive matches 1 as @a[tag=hcrsPermDead] if score @s hcrsRevives < hcrsDummy hcrsMaxRevive run tag @s remove hcrsPermDead

# Respawn Check
execute if score hcrsDummy hcrsCharge matches 0 at @e[type=armor_stand,tag=hcrsShrine] if entity @e[type=player,tag=!hcrsPermDead,scores={hcrsDeadCheck=1..},distance=..8] if entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:totem_of_undying",Count:1b}}] as @e[scores={hcrsDeadCheck=1..},distance=..8,type=player,limit=1] run function hcrs:respawn
execute if score hcrsDummy hcrsCharge matches 1 at @e[type=armor_stand,tag=hcrsShrine,scores={hcrsCharges=1..}] if entity @e[type=player,tag=!hcrsPermDead,scores={hcrsDeadCheck=1..},distance=..8] as @e[scores={hcrsDeadCheck=1..},distance=..8,type=player,limit=1] run function hcrs:respawn

# Add Charge
execute if score hcrsDummy hcrsCharge matches 1 as @e[type=armor_stand,tag=hcrsShrine] if score @s hcrsCharges < hcrsDummy hcrsMaxCharge at @s if entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:totem_of_undying",Count:1b}}] run function hcrs:add_charge
execute if score hcrsDummy hcrsCharge matches 1 as @e[type=armor_stand,tag=hcrsShrine] unless score @s hcrsCharges matches 0.. run scoreboard players set @s hcrsCharges 0

# Survival Place Shrine Check Diamond
execute if score hcrsDummy hcrsSurvShrine matches 1.. if score hcrsDummy hcrsShrineCost matches 0 at @e[type=item,nbt={Item:{id:"minecraft:diamond_block",Count:1b}}] if block ~ ~-1 ~ minecraft:lapis_block if block ~ ~-2 ~ minecraft:gold_block unless entity @e[type=minecraft:armor_stand,tag=hcrsShrine,distance=..8] run function hcrs:place_shrine
# Survival Place Shrine Check Emerald
execute if score hcrsDummy hcrsSurvShrine matches 1.. if score hcrsDummy hcrsShrineCost matches 1 at @e[type=item,nbt={Item:{id:"minecraft:emerald_block",Count:1b}}] if block ~ ~-1 ~ minecraft:lapis_block if block ~ ~-2 ~ minecraft:gold_block unless entity @e[type=minecraft:armor_stand,tag=hcrsShrine,distance=..8] run function hcrs:place_shrine
# Survival Place Shrine Check Copper
execute if score hcrsDummy hcrsSurvShrine matches 1.. if score hcrsDummy hcrsShrineCost matches 2 at @e[type=item,nbt={Item:{id:"minecraft:copper_block",Count:1b}}] if block ~ ~-1 ~ minecraft:lapis_block if block ~ ~-2 ~ minecraft:gold_block unless entity @e[type=minecraft:armor_stand,tag=hcrsShrine,distance=..8] run function hcrs:place_shrine
# Survival Place Shrine Check Gold
execute if score hcrsDummy hcrsSurvShrine matches 1.. if score hcrsDummy hcrsShrineCost matches 3 at @e[type=item,nbt={Item:{id:"minecraft:gold_block",Count:1b}}] if block ~ ~-1 ~ minecraft:lapis_block if block ~ ~-2 ~ minecraft:gold_block unless entity @e[type=minecraft:armor_stand,tag=hcrsShrine,distance=..8] run function hcrs:place_shrine
# Survival Place Shrine Check Netherite
execute if score hcrsDummy hcrsSurvShrine matches 1.. if score hcrsDummy hcrsShrineCost matches 4 at @e[type=item,nbt={Item:{id:"minecraft:netherite_block",Count:1b}}] if block ~ ~-1 ~ minecraft:lapis_block if block ~ ~-2 ~ minecraft:gold_block unless entity @e[type=minecraft:armor_stand,tag=hcrsShrine,distance=..8] run function hcrs:place_shrine
# Survival Remove Shrine Check
execute if score hcrsDummy hcrsSurvShrine matches 1 at @e[type=armor_stand,tag=hcrsShrine] if entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:tnt",Count:1b}}] as @e[type=armor_stand,tag=hcrsShrine,distance=..2,limit=1] run function hcrs:remove_shrine_survival

# Force Dead Players into Spectator
gamemode spectator @a[gamemode=!spectator,scores={hcrsDeadCheck=1}]
execute as @a[scores={hcrsDeadCheck=1},tag=hcrsAdmin,gamemode=spectator] run scoreboard players set @s hcrsDeadCheck 3
execute as @a[scores={hcrsDeadCheck=2}] run scoreboard players set @s hcrsDeadCheck 1

# Give Evokers Totem Rate Score
execute as @e[type=evoker] unless score @s hcrsTotemRate = hcrsDummy hcrsTotemRate run scoreboard players operation @s hcrsTotemRate = hcrsDummy hcrsTotemRate

# Shrine Ghost Particles
execute if score hcrsDummy hcrsShrinePrtcl matches 1.. at @a[scores={hcrsDeadCheck=1..},tag=!hcrsPermDead] if entity @e[type=armor_stand,tag=hcrsShrine,distance=..8] run particle dust 1.000 1.000 1.000 3 ~ ~ ~ 0 0 0 1 10 force
execute if score hcrsDummy hcrsShrinePrtcl matches ..0 at @a[scores={hcrsDeadCheck=1..},tag=!hcrsPermDead] if entity @e[type=armor_stand,tag=hcrsShrine,distance=..8] run particle dust 1.000 1.000 1.000 3 ~ ~ ~ 0 0 0 1 10 normal

# Random Ghost Particles
execute if score hcrsDummy hcrsRGP matches 1 at @a[scores={hcrsTimer=1900..,hcrsDeadCheck=1..}] run particle dust 1.000 1.000 1.000 1 ~ ~ ~ 0 0 0 1 1 force

# Shrine Particles
execute if score hcrsDummy hcrsShrinePrtcl matches 1.. at @e[type=minecraft:armor_stand,tag=hcrsShrine] run particle minecraft:end_rod ~ ~1 ~ 1 1 1 0.01 1 force @a[distance=..16]
execute if score hcrsDummy hcrsShrinePrtcl matches ..0 at @e[type=minecraft:armor_stand,tag=hcrsShrine] run particle minecraft:end_rod ~ ~1 ~ 1 1 1 0.01 1 normal @a[distance=..16]
execute if score hcrsDummy hcrsCharge matches 1 if score hcrsDummy hcrsShrinePrtcl matches 1.. as @e[type=armor_stand,tag=hcrsShrine,scores={hcrsCharges=1..}] if score @s hcrsCharges < hcrsDummy hcrsMaxCharge at @s run particle minecraft:totem_of_undying ~ ~1 ~ 1 1 1 0.01 1 force @a[distance=..16]
execute if score hcrsDummy hcrsCharge matches 1 if score hcrsDummy hcrsShrinePrtcl matches ..0 as @e[type=armor_stand,tag=hcrsShrine,scores={hcrsCharges=1..}] if score @s hcrsCharges < hcrsDummy hcrsMaxCharge at @s run particle minecraft:totem_of_undying ~ ~1 ~ 1 1 1 0.01 1 normal @a[distance=..16]
execute if score hcrsDummy hcrsCharge matches 1 if score hcrsDummy hcrsShrinePrtcl matches 1.. as @e[type=armor_stand,tag=hcrsShrine,scores={hcrsCharges=1..}] if score @s hcrsCharges >= hcrsDummy hcrsMaxCharge at @s run particle minecraft:witch ~ ~1 ~ 1 1 1 0.01 1 force @a[distance=..16]
execute if score hcrsDummy hcrsCharge matches 1 if score hcrsDummy hcrsShrinePrtcl matches ..0 as @e[type=armor_stand,tag=hcrsShrine,scores={hcrsCharges=1..}] if score @s hcrsCharges >= hcrsDummy hcrsMaxCharge at @s run particle minecraft:witch ~ ~1 ~ 1 1 1 0.01 1 normal @a[distance=..16]

# Give Guide Book
execute as @a[gamemode=survival,tag=!hcrsGuide] run function hcrs:give_guide

# Guide Book Triggers
scoreboard players enable @a hcrsInfo
execute as @a if score @s hcrsInfo matches 1 run function hcrs:guide/shrine_creation
execute as @a if score @s hcrsInfo matches 2 run function hcrs:guide/shrine_use
execute as @a if score @s hcrsInfo matches 3 run function hcrs:guide/totem
execute as @a if score @s hcrsInfo matches 4 run function hcrs:guide/revives
