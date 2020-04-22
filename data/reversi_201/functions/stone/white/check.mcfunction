#白だったら次のマス見る
    execute if block ~ ~ ~ black_concrete positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 run function reversi_201:stone/white/check
#黒じゃーん
    execute if score $isSuccess ReversiData_201 matches 1 run setblock ~ ~ ~ white_concrete
    execute if score $isSuccess ReversiData_201 matches 1 positioned ~ 38.6 ~ run data modify entity @e[limit=1,type=armor_stand,tag=stone_201,distance=..0.05] ArmorItems[3].id set value "minecraft:white_concrete"
    execute if score $isSuccess ReversiData_201 matches 1 run scoreboard players add $StoneWhite ReversiData_201 1
    execute if score $isSuccess ReversiData_201 matches 1 run scoreboard players remove $StoneBlack ReversiData_201 1
    execute if block ~ ~ ~ white_concrete run scoreboard players set $isSuccess ReversiData_201 1
    execute if score $isSuccess ReversiData_201 matches 1 run particle dust 0.8 0.8 0.8 1 ~ 40.6 ~ 0.2 0 0.2 1 8 force