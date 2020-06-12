#8方向処理
    execute if score $TurnColor ReversiData_201 matches 0 run setblock ~ ~ ~ black_stained_glass
    execute if score $TurnColor ReversiData_201 matches 1 run setblock ~ ~ ~ black_stained_glass
    execute rotated 000 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 unless block ~ ~ ~ orange_stained_glass unless blocks ^ ^ ^-1.2071 ^ ^ ^-1.2071 ~ ~ ~ all run function reversi_201:turn/player/check.recursive
    execute rotated 045 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 unless block ~ ~ ~ orange_stained_glass unless blocks ^ ^ ^-1.2071 ^ ^ ^-1.2071 ~ ~ ~ all run function reversi_201:turn/player/check.recursive
    execute rotated 090 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 unless block ~ ~ ~ orange_stained_glass unless blocks ^ ^ ^-1.2071 ^ ^ ^-1.2071 ~ ~ ~ all run function reversi_201:turn/player/check.recursive
    execute rotated 135 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 unless block ~ ~ ~ orange_stained_glass unless blocks ^ ^ ^-1.2071 ^ ^ ^-1.2071 ~ ~ ~ all run function reversi_201:turn/player/check.recursive
    execute rotated 180 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 unless block ~ ~ ~ orange_stained_glass unless blocks ^ ^ ^-1.2071 ^ ^ ^-1.2071 ~ ~ ~ all run function reversi_201:turn/player/check.recursive
    execute rotated 225 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 unless block ~ ~ ~ orange_stained_glass unless blocks ^ ^ ^-1.2071 ^ ^ ^-1.2071 ~ ~ ~ all run function reversi_201:turn/player/check.recursive
    execute rotated 270 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 unless block ~ ~ ~ orange_stained_glass unless blocks ^ ^ ^-1.2071 ^ ^ ^-1.2071 ~ ~ ~ all run function reversi_201:turn/player/check.recursive
    execute rotated 315 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 unless block ~ ~ ~ orange_stained_glass unless blocks ^ ^ ^-1.2071 ^ ^ ^-1.2071 ~ ~ ~ all run function reversi_201:turn/player/check.recursive
    setblock ~ ~ ~ air