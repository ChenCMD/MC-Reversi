#候補のEntity召喚する
    summon area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["Candidate_201","Entity_201"]}
    scoreboard players operation @e[tag=Candidate_201,distance=..0.5] Evaluation_201 = $Tmp Evaluation_201
#4隅の補正入れる
    execute if entity @e[tag=PreCorner_201,distance=..0.5] at @e[tag=Corner_201,distance=..1.5] if block ~ ~ ~ air at @s run scoreboard players add @e[tag=Candidate_201,distance=..0.5] Evaluation_201 16
    execute if entity @e[tag=Corner_201,distance=..0.5] run scoreboard players remove @e[tag=Candidate_201,distance=..0.5] Evaluation_201 16
#リセット
    scoreboard players set $Tmp Evaluation_201 0