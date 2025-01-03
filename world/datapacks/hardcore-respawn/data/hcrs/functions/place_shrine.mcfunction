###############################
# HARDCORE RESPAWN by Dahson
# Special Thanks to VoidsEdge
# JUNE 1 2019 / DECEMBER 5 2021
###############################
#place armor stand
execute align xyz run summon armor_stand ~ ~ ~ {Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["hcrsShrine"]}
execute at @e[type=armor_stand,tag=hcrsShrine,distance=..2,limit=1] run tp @e[type=armor_stand,tag=hcrsShrine,distance=..2,limit=1] ~.5 ~ ~.5
#kill item Diamond
execute if score hcrsDummy hcrsSurvShrine matches 1.. if score hcrsDummy hcrsShrineCost matches 0 at @e[type=item,nbt={Item:{id:"minecraft:diamond_block",Count:1b}},limit=1] if block ~ ~-1 ~ minecraft:lapis_block if block ~ ~-2 ~ minecraft:gold_block if entity @e[type=minecraft:armor_stand,tag=hcrsShrine,distance=..2] run kill @e[distance=..2,type=item,nbt={Item:{id:"minecraft:diamond_block",Count:1b}}]
#kill item Emerald
execute if score hcrsDummy hcrsSurvShrine matches 1.. if score hcrsDummy hcrsShrineCost matches 1 at @e[type=item,nbt={Item:{id:"minecraft:emerald_block",Count:1b}},limit=1] if block ~ ~-1 ~ minecraft:lapis_block if block ~ ~-2 ~ minecraft:gold_block if entity @e[type=minecraft:armor_stand,tag=hcrsShrine,distance=..2] run kill @e[distance=..2,type=item,nbt={Item:{id:"minecraft:emerald_block",Count:1b}}]
#kill item Copper
execute if score hcrsDummy hcrsSurvShrine matches 1.. if score hcrsDummy hcrsShrineCost matches 2 at @e[type=item,nbt={Item:{id:"minecraft:copper_block",Count:1b}},limit=1] if block ~ ~-1 ~ minecraft:lapis_block if block ~ ~-2 ~ minecraft:gold_block if entity @e[type=minecraft:armor_stand,tag=hcrsShrine,distance=..2] run kill @e[distance=..2,type=item,nbt={Item:{id:"minecraft:copper_block",Count:1b}}]
#kill item Gold
execute if score hcrsDummy hcrsSurvShrine matches 1.. if score hcrsDummy hcrsShrineCost matches 3 at @e[type=item,nbt={Item:{id:"minecraft:gold_block",Count:1b}},limit=1] if block ~ ~-1 ~ minecraft:lapis_block if block ~ ~-2 ~ minecraft:gold_block if entity @e[type=minecraft:armor_stand,tag=hcrsShrine,distance=..2] run kill @e[distance=..2,type=item,nbt={Item:{id:"minecraft:gold_block",Count:1b}}]
#kill item Netherite
execute if score hcrsDummy hcrsSurvShrine matches 1.. if score hcrsDummy hcrsShrineCost matches 4 at @e[type=item,nbt={Item:{id:"minecraft:netherite_block",Count:1b}},limit=1] if block ~ ~-1 ~ minecraft:lapis_block if block ~ ~-2 ~ minecraft:gold_block if entity @e[type=minecraft:armor_stand,tag=hcrsShrine,distance=..2] run kill @e[distance=..2,type=item,nbt={Item:{id:"minecraft:netherite_block",Count:1b}}]
#play sound
execute at @e[type=armor_stand,tag=hcrsShrine,distance=..2,limit=1] run playsound minecraft:entity.zombie.infect master @a ~ ~ ~