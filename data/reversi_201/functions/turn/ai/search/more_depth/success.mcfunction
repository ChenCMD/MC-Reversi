#候補のEntity召喚する
    summon area_effect_cloud ~ ~ ~ {Rotation:[0f,90f],Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["Candidate_201","Entity_201"]}
    scoreboard players operation @e[tag=Candidate_201,distance=..0.5] Evaluation_201 = $Tmp Evaluation_201
#4隅の補正入れる
    summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:[TempY,Entity_201]}
    execute positioned ~ 10 ~ if entity @e[tag=PreCorner_201,distance=..0.5] at @e[tag=Corner_201,distance=..1.5] run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:[Board_201,Entity_201]}
    execute positioned ~ 10 ~ if entity @e[tag=PreCorner_201,distance=..0.5] store result entity @e[limit=1,tag=Board_201] Pos[1] double 0.1 run data get entity @e[limit=1,tag=TempY] Pos[1] 10
    execute positioned ~ 10 ~ if entity @e[tag=PreCorner_201,distance=..0.5] at @e[limit=1,tag=Board_201] if block ~ ~ ~ air at @s run scoreboard players add @e[tag=Candidate_201,distance=..0.5] Evaluation_201 16
    tp @e[limit=1,tag=TempY] ~ ~ ~
    execute positioned ~ 10 ~ if entity @e[tag=Corner_201,distance=..0.5] at @e[tag=TempY] run scoreboard players remove @e[tag=Candidate_201,distance=..0.5] Evaluation_201 16
    kill @e[limit=1,tag=TempY]
#リセット
    scoreboard players set $Tmp Evaluation_201 0