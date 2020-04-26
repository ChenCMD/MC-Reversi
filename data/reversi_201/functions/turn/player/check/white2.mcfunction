#白だったら次のマス見る
    execute if block ~ ~ ~ black_concrete positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 run function reversi_201:turn/player/check/white2
#黒じゃーん
    execute if block ~ ~ ~ white_concrete run tag @s add isSuccess_201