#候補のEntity召喚する
    summon area_effect_cloud ~ ~ ~ {Rotation:[0f,90f],Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["Candidate_201","Entity_201"]}
#49手以降の検査
    #execute if score #StoneQuantity ReversiData_201 matches 49.. if score #StoneQuantity ReversiData_201 < #AI-LastAlgorithm ReversiData_201 run function reversi_201:game/turn/ai/algorithm/2nd.run
#評価値の設定 63-n手目以降は0が入る
    scoreboard players operation @e[type=area_effect_cloud,tag=Candidate_201,distance=..0.5] Evaluation_201 = #Tmp Evaluation_201
#4隅の補正入れる
    execute if score #StoneQuantity ReversiData_201 < #AI-LastAlgorithm ReversiData_201 if entity @e[type=area_effect_cloud,tag=PreCorner_201,distance=..0.5] at @e[type=area_effect_cloud,tag=Corner_201,distance=..1.5] if block ~ ~ ~ air at @s run scoreboard players add @e[type=area_effect_cloud,tag=Candidate_201,distance=..0.5] Evaluation_201 16
    execute if score #StoneQuantity ReversiData_201 < #AI-LastAlgorithm ReversiData_201 if entity @e[type=area_effect_cloud,tag=Corner_201,distance=..0.5] run scoreboard players remove @e[type=area_effect_cloud,tag=Candidate_201,distance=..0.5] Evaluation_201 16
#リセット
    scoreboard players set #Tmp Evaluation_201 0