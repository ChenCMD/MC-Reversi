#石の判定
    execute rotated 000 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ black_stained_glass run function reversi_201:turn/ai/search/more_depth/stone/white/check
    scoreboard players reset $isSuccess ReversiData_201
    execute rotated 045 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ black_stained_glass run function reversi_201:turn/ai/search/more_depth/stone/white/check
    scoreboard players reset $isSuccess ReversiData_201
    execute rotated 090 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ black_stained_glass run function reversi_201:turn/ai/search/more_depth/stone/white/check
    scoreboard players reset $isSuccess ReversiData_201
    execute rotated 135 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ black_stained_glass run function reversi_201:turn/ai/search/more_depth/stone/white/check
    scoreboard players reset $isSuccess ReversiData_201
    execute rotated 180 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ black_stained_glass run function reversi_201:turn/ai/search/more_depth/stone/white/check
    scoreboard players reset $isSuccess ReversiData_201
    execute rotated 225 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ black_stained_glass run function reversi_201:turn/ai/search/more_depth/stone/white/check
    scoreboard players reset $isSuccess ReversiData_201
    execute rotated 270 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ black_stained_glass run function reversi_201:turn/ai/search/more_depth/stone/white/check
    scoreboard players reset $isSuccess ReversiData_201
    execute rotated 315 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ black_stained_glass run function reversi_201:turn/ai/search/more_depth/stone/white/check
    scoreboard players reset $isSuccess ReversiData_201
#カーソル位置に石
    setblock ~ ~ ~ white_stained_glass