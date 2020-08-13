#候補のEntity召喚する
    summon area_effect_cloud ~ ~ ~ {Rotation:[0f,90f],Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["Candidate_201","Entity_201"]}
#49手以降の検査
    #execute if score #StoneQuantity ReversiData_201 matches 49.. if score #StoneQuantity ReversiData_201 < #AI-LastAlgorithm ReversiData_201 run function reversi_201:game/turn/ai/algorithm/2nd.run
#評価値の設定
    scoreboard players operation @e[type=area_effect_cloud,tag=Candidate_201,distance=..0.5] Evaluation_201 = #Tmp Evaluation_201
#4隅の補正入れる
    execute if score #StoneQuantity ReversiData_201 < #AI-LastAlgorithm ReversiData_201 run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:[TempY,Entity_201]}
    execute if score #StoneQuantity ReversiData_201 < #AI-LastAlgorithm ReversiData_201 positioned ~ 10 ~ if entity @e[type=area_effect_cloud,tag=PreCorner_201,distance=..0.5] at @e[type=area_effect_cloud,tag=Corner_201,distance=..1.5] run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:[Board_201,Entity_201]}
    execute if score #StoneQuantity ReversiData_201 < #AI-LastAlgorithm ReversiData_201 positioned ~ 10 ~ if entity @e[type=area_effect_cloud,tag=PreCorner_201,distance=..0.5] store result entity @e[type=area_effect_cloud,tag=Board_201,distance=..50,x=-19995.0,y=11.0,z=21.0,limit=1] Pos[1] double 0.1 run data get entity @e[type=area_effect_cloud,tag=TempY,distance=..50,x=-19995.0,y=11.0,z=21.0,limit=1] Pos[1] 10
    execute if score #StoneQuantity ReversiData_201 < #AI-LastAlgorithm ReversiData_201 positioned ~ 10 ~ if entity @e[type=area_effect_cloud,tag=PreCorner_201,distance=..0.5] at @e[type=area_effect_cloud,tag=Board_201,limit=1] if block ~ ~ ~ air at @s run scoreboard players add @e[type=area_effect_cloud,tag=Candidate_201,distance=..0.5] Evaluation_201 16
    execute if score #StoneQuantity ReversiData_201 < #AI-LastAlgorithm ReversiData_201 run tp @e[type=area_effect_cloud,tag=TempY,distance=..50,x=-19995.0,y=11.0,z=21.0,limit=1] ~ ~ ~
    execute if score #StoneQuantity ReversiData_201 < #AI-LastAlgorithm ReversiData_201 positioned ~ 10 ~ if entity @e[type=area_effect_cloud,tag=Corner_201,distance=..0.5] at @e[type=area_effect_cloud,tag=TempY,distance=..50,x=-19995.0,y=11.0,z=21.0] run scoreboard players remove @e[type=area_effect_cloud,tag=Candidate_201,distance=..0.5] Evaluation_201 16
    execute if score #StoneQuantity ReversiData_201 < #AI-LastAlgorithm ReversiData_201 run kill @e[type=area_effect_cloud,tag=TempY,distance=..50,x=-19995.0,y=11.0,z=21.0,limit=1]
    execute if score #StoneQuantity ReversiData_201 < #AI-LastAlgorithm ReversiData_201 run kill @e[type=area_effect_cloud,tag=Board_201,distance=..50,x=-19995.0,y=11.0,z=21.0,limit=1]
# #DEBUG log
# data merge storage reversi_201:logs {tmp:"reversi_201:game/turn/ai/advanced/deep.success"}
# function reversi_201:game/debug/log.put
#リセット
    scoreboard players set #Tmp Evaluation_201 0