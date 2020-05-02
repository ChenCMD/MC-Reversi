#白だったら次のマス見る
    execute if block ~ ~ ~ white_concrete positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 run function reversi_201:turn/ai/search/more_depth/stone/black/check
#黒じゃーん
    execute if score $isSuccess ReversiData_201 matches 1 run setblock ~ ~ ~ black_concrete
    execute if block ~ ~ ~ black_concrete run scoreboard players set $isSuccess ReversiData_201 1