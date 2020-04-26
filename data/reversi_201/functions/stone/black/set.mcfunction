#石の判定
    execute rotated 000 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ white_concrete run function reversi_201:stone/black/check
    scoreboard players reset $isSuccess ReversiData_201
    execute rotated 045 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ white_concrete run function reversi_201:stone/black/check
    scoreboard players reset $isSuccess ReversiData_201
    execute rotated 090 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ white_concrete run function reversi_201:stone/black/check
    scoreboard players reset $isSuccess ReversiData_201
    execute rotated 135 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ white_concrete run function reversi_201:stone/black/check
    scoreboard players reset $isSuccess ReversiData_201
    execute rotated 180 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ white_concrete run function reversi_201:stone/black/check
    scoreboard players reset $isSuccess ReversiData_201
    execute rotated 225 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ white_concrete run function reversi_201:stone/black/check
    scoreboard players reset $isSuccess ReversiData_201
    execute rotated 270 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ white_concrete run function reversi_201:stone/black/check
    scoreboard players reset $isSuccess ReversiData_201
    execute rotated 315 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ white_concrete run function reversi_201:stone/black/check
    scoreboard players reset $isSuccess ReversiData_201
#カーソル位置に石
    scoreboard players add $StoneQuantity ReversiData_201 1
    scoreboard players add $StoneBlack ReversiData_201 1
    setblock ~ ~ ~ black_concrete
    summon armor_stand ~ 38.6 ~ {ArmorItems:[{},{},{},{id:"minecraft:black_concrete",Count:1b}],Fire:32767s,Tags:[fire_000,stone_201,Entity_201],Marker:1b,Invisible:1b}
#カーソル更新
    scoreboard players set $TurnColor ReversiData_201 1
    function reversi_201:turn/player/search/1