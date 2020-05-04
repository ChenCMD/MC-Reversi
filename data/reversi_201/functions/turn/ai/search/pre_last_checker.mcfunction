scoreboard players add #MoreDepthTurnColor ReversiData_201 1
scoreboard players operation #MoreDepthTurnColor ReversiData_201 %= #2 num_000

summon armor_stand 2065 ~ 17 {Marker:1b,Invisible:1b,Tags:[Board_201,Entity_201]}
execute store result entity @e[limit=1,tag=Board_201] Pos[0] double 0.001 run data get entity @e[limit=1,tag=BoardSize_201] Pos[0] 1000
execute store result entity @e[limit=1,tag=Board_201] Pos[2] double 0.001 run data get entity @e[limit=1,tag=BoardSize_201] Pos[2] 1000
execute at @e[tag=Board_201] run clone 2065 ~ 17 ~ ~ ~ 2065 ~-1 17
kill @e[tag=Board_201]

execute if score #MoreDepthTurnColor ReversiData_201 matches 0 positioned ~ ~-1 ~ run function reversi_201:turn/ai/search/more_depth/stone/white/set
execute if score #MoreDepthTurnColor ReversiData_201 matches 1 positioned ~ ~-1 ~ run function reversi_201:turn/ai/search/more_depth/stone/black/set

summon armor_stand 2065 ~-1 17 {Tags:[PreLastChecker_201,Entity_201],Marker:1b,Invisible:0b,Rotation:[-90.0f,0f]}
#TODO ここぜっっっっっっっったいに負荷高いので後でどうにかしろ
execute as @e[tag=PreLastChecker_201] at @s run function reversi_201:turn/ai/search/pre_last_checker_loop

scoreboard players add #MoreDepthTurnColor ReversiData_201 1
scoreboard players operation #MoreDepthTurnColor ReversiData_201 %= #2 num_000