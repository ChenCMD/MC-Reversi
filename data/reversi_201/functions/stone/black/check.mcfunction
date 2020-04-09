#白だったら次のマス見る
    execute if block ~ ~ ~ white_concrete positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 run function reversi_201:stone/black/check
#黒じゃーん
    execute if score $isSuccess ReversiData_201 matches 1 run setblock ~ ~ ~ black_concrete
    execute if score $isSuccess ReversiData_201 matches 1 positioned ~ 38.6 ~ run data modify entity @e[distance=..0.05,limit=1,tag=stone_201,type=armor_stand] ArmorItems[3].id set value "minecraft:black_concrete"
    execute if score $isSuccess ReversiData_201 matches 1 run scoreboard players add $StoneBlack ReversiData_201 1
    execute if score $isSuccess ReversiData_201 matches 1 run scoreboard players remove $StoneWhite ReversiData_201 1
    execute if block ~ ~ ~ black_concrete run scoreboard players set $isSuccess ReversiData_201 1
    execute if score $isSuccess ReversiData_201 matches 1 run particle dust 0 0 0 1 ~ 40.6 ~ 0.2 0 0.2 1 8 force