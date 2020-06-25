execute if score #MoreDepthTurnColor ReversiData_201 matches 0 if block ~ ~ ~ white_stained_glass positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 run function reversi_201:game/stone/util/put.check
execute if score #MoreDepthTurnColor ReversiData_201 matches 1 if block ~ ~ ~ black_stained_glass positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 run function reversi_201:game/stone/util/put.check

execute if score #MoreDepthTurnColor ReversiData_201 matches 0 if score #isSuccess ReversiData_201 matches 2 run setblock ~ ~ ~ black_stained_glass
execute if score #MoreDepthTurnColor ReversiData_201 matches 0 if block ~ ~ ~ black_stained_glass run scoreboard players set #isSuccess ReversiData_201 2

execute if score #MoreDepthTurnColor ReversiData_201 matches 1 if score #isSuccess ReversiData_201 matches 2 run setblock ~ ~ ~ white_stained_glass
execute if score #MoreDepthTurnColor ReversiData_201 matches 1 if block ~ ~ ~ white_stained_glass run scoreboard players set #isSuccess ReversiData_201 2