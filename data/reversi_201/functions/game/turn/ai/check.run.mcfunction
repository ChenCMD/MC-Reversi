#8方向処理
    execute if score #TurnColor ReversiData_201 matches 0 run execute rotated 000 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ white_stained_glass run function reversi_201:game/turn/ai/check.recursive
    execute if score #TurnColor ReversiData_201 matches 1 run execute rotated 000 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ black_stained_glass run function reversi_201:game/turn/ai/check.recursive
    tag @s remove isSuccessLine_201
    execute if score #TurnColor ReversiData_201 matches 0 run execute rotated 045 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ white_stained_glass run function reversi_201:game/turn/ai/check.recursive
    execute if score #TurnColor ReversiData_201 matches 1 run execute rotated 045 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ black_stained_glass run function reversi_201:game/turn/ai/check.recursive
    tag @s remove isSuccessLine_201
    execute if score #TurnColor ReversiData_201 matches 0 run execute rotated 090 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ white_stained_glass run function reversi_201:game/turn/ai/check.recursive
    execute if score #TurnColor ReversiData_201 matches 1 run execute rotated 090 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ black_stained_glass run function reversi_201:game/turn/ai/check.recursive
    tag @s remove isSuccessLine_201
    execute if score #TurnColor ReversiData_201 matches 0 run execute rotated 135 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ white_stained_glass run function reversi_201:game/turn/ai/check.recursive
    execute if score #TurnColor ReversiData_201 matches 1 run execute rotated 135 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ black_stained_glass run function reversi_201:game/turn/ai/check.recursive
    tag @s remove isSuccessLine_201
    execute if score #TurnColor ReversiData_201 matches 0 run execute rotated 180 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ white_stained_glass run function reversi_201:game/turn/ai/check.recursive
    execute if score #TurnColor ReversiData_201 matches 1 run execute rotated 180 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ black_stained_glass run function reversi_201:game/turn/ai/check.recursive
    tag @s remove isSuccessLine_201
    execute if score #TurnColor ReversiData_201 matches 0 run execute rotated 225 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ white_stained_glass run function reversi_201:game/turn/ai/check.recursive
    execute if score #TurnColor ReversiData_201 matches 1 run execute rotated 225 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ black_stained_glass run function reversi_201:game/turn/ai/check.recursive
    tag @s remove isSuccessLine_201
    execute if score #TurnColor ReversiData_201 matches 0 run execute rotated 270 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ white_stained_glass run function reversi_201:game/turn/ai/check.recursive
    execute if score #TurnColor ReversiData_201 matches 1 run execute rotated 270 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ black_stained_glass run function reversi_201:game/turn/ai/check.recursive
    tag @s remove isSuccessLine_201
    execute if score #TurnColor ReversiData_201 matches 0 run execute rotated 315 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ white_stained_glass run function reversi_201:game/turn/ai/check.recursive
    execute if score #TurnColor ReversiData_201 matches 1 run execute rotated 315 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ black_stained_glass run function reversi_201:game/turn/ai/check.recursive
    tag @s remove isSuccessLine_201