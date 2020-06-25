#白だったら次のマス見る
    execute if score $TurnColor ReversiData_201 matches 0 if block ~ ~ ~ white_stained_glass positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 run function reversi_201:game/turn/ai/check.recursive
    execute if score $TurnColor ReversiData_201 matches 1 if block ~ ~ ~ black_stained_glass positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 run function reversi_201:game/turn/ai/check.recursive
#再帰の帰りにisSuccessが付いてたら開放度加算
    execute if entity @s[tag=isSuccessLine_201] if block ~-1 ~ ~-1 air run scoreboard players add #Tmp Evaluation_201 1
    execute if entity @s[tag=isSuccessLine_201] if block ~-1 ~ ~00 air run scoreboard players add #Tmp Evaluation_201 1
    execute if entity @s[tag=isSuccessLine_201] if block ~-1 ~ ~01 air run scoreboard players add #Tmp Evaluation_201 1
    execute if entity @s[tag=isSuccessLine_201] if block ~00 ~ ~-1 air run scoreboard players add #Tmp Evaluation_201 1
    execute if entity @s[tag=isSuccessLine_201] if block ~00 ~ ~01 air run scoreboard players add #Tmp Evaluation_201 1
    execute if entity @s[tag=isSuccessLine_201] if block ~01 ~ ~-1 air run scoreboard players add #Tmp Evaluation_201 1
    execute if entity @s[tag=isSuccessLine_201] if block ~01 ~ ~00 air run scoreboard players add #Tmp Evaluation_201 1
    execute if entity @s[tag=isSuccessLine_201] if block ~01 ~ ~01 air run scoreboard players add #Tmp Evaluation_201 1
#黒じゃーん
    execute if score $StoneQuantity ReversiData_201 matches ..54 if score $TurnColor ReversiData_201 matches 0 if block ~ ~ ~ black_stained_glass run tag @s add isSuccessLine_201
    execute if score $StoneQuantity ReversiData_201 matches ..54 if score $TurnColor ReversiData_201 matches 1 if block ~ ~ ~ white_stained_glass run tag @s add isSuccessLine_201
    execute if score $TurnColor ReversiData_201 matches 0 if block ~ ~ ~ black_stained_glass run tag @s add isSuccess_201
    execute if score $TurnColor ReversiData_201 matches 1 if block ~ ~ ~ white_stained_glass run tag @s add isSuccess_201