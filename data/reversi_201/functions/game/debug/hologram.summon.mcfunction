scoreboard players operation #resolve ReversiData_201 = @s Evaluation_201
summon area_effect_cloud ~ ~7.5 ~ {Rotation:[0f,90f],Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["Display"],CustomNameVisible:1b,CustomName:"\"\""}
loot spawn ~ 200 ~ loot reversi_201:resolve.score
data modify entity @e[tag=Display,tag=!AlreadyInsert,limit=1] CustomName set from entity @e[type=item,distance=..0.25,y=200,limit=1] Item.tag.display.Name
tag @e[tag=Display,tag=!AlreadyInsert,limit=1] add AlreadyInsert
kill @e[type=item,distance=..0.25,y=200,limit=1]