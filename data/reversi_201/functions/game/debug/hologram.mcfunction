summon minecraft:area_effect_cloud ~22064 40.0 ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:[holo,i],CustomName:"",CustomNameVisible:1b}
scoreboard players operation #resolve ReversiData_201 = @s Evaluation_201
loot spawn ~22064 200 ~ loot reversi_201:resolve.score
execute as @e[tag=i,limit=1] at @s run data modify entity @s CustomName set from entity @e[type=item,distance=..1,y=200,limit=1] Item.tag.display.Name
execute positioned ~22064 200 ~ run kill @e[type=item,distance=..1,limit=1]
tag @e[tag=i] remove i