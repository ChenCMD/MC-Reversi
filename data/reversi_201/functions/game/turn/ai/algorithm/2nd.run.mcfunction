scoreboard players add #MoreDepthTurnColor ReversiData_201 1
scoreboard players operation #MoreDepthTurnColor ReversiData_201 %= #2 num_000

clone 2065 ~ 17 2072 ~ 24 2065 ~-1 17

execute positioned ~ ~-1 ~ run function reversi_201:game/stone/util/put.set

summon armor_stand 2065 ~-1 17 {Tags:[2ndChecker_201,Entity_201],Marker:1b,Invisible:0b,Rotation:[-90.0f,0f]}

execute as @e[tag=2ndChecker_201] at @s run function reversi_201:game/turn/ai/algorithm/2nd.recursive

scoreboard players add #MoreDepthTurnColor ReversiData_201 1
scoreboard players operation #MoreDepthTurnColor ReversiData_201 %= #2 num_000