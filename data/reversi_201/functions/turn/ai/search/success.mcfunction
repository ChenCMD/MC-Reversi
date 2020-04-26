#Entity summon
    summon area_effect_cloud ~ 10 ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["Candidate_201","Entity_201"]}
    scoreboard players operation @e[tag=Candidate_201,distance=..0.5] OpennessData_201 = $Tmp OpennessData_201
#4隅補正
    execute if entity @e[tag=PreCorner_201,distance=..0.5] at @e[tag=Corner_201,distance=..1.5] if block ~ ~ ~ air at @s run scoreboard players add @e[tag=Candidate_201,distance=..0.5] OpennessData_201 16
    execute if entity @e[tag=Corner_201,distance=..0.5] run scoreboard players remove @e[tag=Candidate_201,distance=..0.5] OpennessData_201 16
    scoreboard players set $Tmp OpennessData_201 0
#Lv2~処理
    scoreboard players operation $Recursion-depth ReversiData_201 = $AI-Lv ReversiData_201
    scoreboard players remove $Recursion-depth ReversiData_201 1
    execute if score $Recursion-depth ReversiData_201 matches 1.. at @s run function reversi_201:turn/ai/lv2
    tag @s remove isSuccess_201