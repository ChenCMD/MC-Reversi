#白だったら次のマス見る
    execute if block ~ ~ ~ white_concrete positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 run function reversi_201:turn/ai/check-openness/black2
#再帰の帰りにisSuccessが付いてたら開放度加算
    execute if entity @s[tag=isSuccessLine_201] if block ~-1 ~ ~-1 air run scoreboard players add $Tmp OpennessData_201 1
    execute if entity @s[tag=isSuccessLine_201] if block ~-1 ~ ~00 air run scoreboard players add $Tmp OpennessData_201 1
    execute if entity @s[tag=isSuccessLine_201] if block ~-1 ~ ~01 air run scoreboard players add $Tmp OpennessData_201 1
    execute if entity @s[tag=isSuccessLine_201] if block ~00 ~ ~-1 air run scoreboard players add $Tmp OpennessData_201 1
    execute if entity @s[tag=isSuccessLine_201] if block ~00 ~ ~01 air run scoreboard players add $Tmp OpennessData_201 1
    execute if entity @s[tag=isSuccessLine_201] if block ~01 ~ ~-1 air run scoreboard players add $Tmp OpennessData_201 1
    execute if entity @s[tag=isSuccessLine_201] if block ~01 ~ ~00 air run scoreboard players add $Tmp OpennessData_201 1
    execute if entity @s[tag=isSuccessLine_201] if block ~01 ~ ~01 air run scoreboard players add $Tmp OpennessData_201 1
#黒じゃーん
    execute if block ~ ~ ~ black_concrete run tag @s add isSuccessLine_201
    execute if block ~ ~ ~ black_concrete run tag @s add isSuccess_201