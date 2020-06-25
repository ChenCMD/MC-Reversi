scoreboard players operation #resolve ReversiData_201 = @s Evaluation_201
summon area_effect_cloud ~ ~7.5 ~ {Rotation:[0f,90f],Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["Display"],CustomNameVisible:1b,CustomName:"\"\""}
loot spawn ~ 200 ~ loot reversi_201:resolve.score
data modify entity @e[limit=1,tag=Display,tag=!AlreadyInsert] CustomName set from entity @e[limit=1,type=item,y=200,distance=..0.25] Item.tag.display.Name
tag @e[limit=1,tag=Display,tag=!AlreadyInsert] add AlreadyInsert
kill @e[limit=1,type=item,y=200,distance=..0.25]