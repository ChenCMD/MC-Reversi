#カーソル位置に石
    execute if score #MoreDepthTurnColor ReversiData_201 matches 0 run setblock ~ ~ ~ black_stained_glass
    execute if score #MoreDepthTurnColor ReversiData_201 matches 1 run setblock ~ ~ ~ white_stained_glass
#石の判定
    execute rotated 000 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 unless block ~ ~ ~ orange_stained_glass unless blocks ^ ^ ^-1.2071 ^ ^ ^-1.2071 ~ ~ ~ all run function reversi_201:stone/util/put.check
    scoreboard players set #isSuccess ReversiData_201 0
    execute rotated 045 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 unless block ~ ~ ~ orange_stained_glass unless blocks ^ ^ ^-1.2071 ^ ^ ^-1.2071 ~ ~ ~ all run function reversi_201:stone/util/put.check
    scoreboard players set #isSuccess ReversiData_201 0
    execute rotated 090 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 unless block ~ ~ ~ orange_stained_glass unless blocks ^ ^ ^-1.2071 ^ ^ ^-1.2071 ~ ~ ~ all run function reversi_201:stone/util/put.check
    scoreboard players set #isSuccess ReversiData_201 0
    execute rotated 135 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 unless block ~ ~ ~ orange_stained_glass unless blocks ^ ^ ^-1.2071 ^ ^ ^-1.2071 ~ ~ ~ all run function reversi_201:stone/util/put.check
    scoreboard players set #isSuccess ReversiData_201 0
    execute rotated 180 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 unless block ~ ~ ~ orange_stained_glass unless blocks ^ ^ ^-1.2071 ^ ^ ^-1.2071 ~ ~ ~ all run function reversi_201:stone/util/put.check
    scoreboard players set #isSuccess ReversiData_201 0
    execute rotated 225 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 unless block ~ ~ ~ orange_stained_glass unless blocks ^ ^ ^-1.2071 ^ ^ ^-1.2071 ~ ~ ~ all run function reversi_201:stone/util/put.check
    scoreboard players set #isSuccess ReversiData_201 0
    execute rotated 270 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 unless block ~ ~ ~ orange_stained_glass unless blocks ^ ^ ^-1.2071 ^ ^ ^-1.2071 ~ ~ ~ all run function reversi_201:stone/util/put.check
    scoreboard players set #isSuccess ReversiData_201 0
    execute rotated 315 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 unless block ~ ~ ~ orange_stained_glass unless blocks ^ ^ ^-1.2071 ^ ^ ^-1.2071 ~ ~ ~ all run function reversi_201:stone/util/put.check
    scoreboard players set #isSuccess ReversiData_201 0