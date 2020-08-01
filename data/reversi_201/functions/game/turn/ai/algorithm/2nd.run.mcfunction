scoreboard players add #MoreDepthTurnColor ReversiData_201 1
scoreboard players operation #MoreDepthTurnColor ReversiData_201 %= #2 num_000

clone -19999 ~ 17 -19992 ~ 24 -19999 ~-1 17

execute positioned ~ ~-1 ~ run function reversi_201:game/stone/util/put.set

summon armor_stand -19999 ~-1 17 {Tags:[2ndChecker_201,Entity_201],Marker:1b,Invisible:0b,Rotation:[-90.0f,0f]}

execute as @e[type=armor_stand,tag=2ndChecker_201,distance=..50,x=-19995.0,y=11.0,z=21.0] at @s run function reversi_201:game/turn/ai/algorithm/2nd.recursive

scoreboard players add #MoreDepthTurnColor ReversiData_201 1
scoreboard players operation #MoreDepthTurnColor ReversiData_201 %= #2 num_000