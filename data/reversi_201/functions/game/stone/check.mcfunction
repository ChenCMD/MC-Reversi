execute if score #TurnColor ReversiData_201 matches 0 if block ~ ~ ~ white_stained_glass positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 run function reversi_201:game/stone/check
execute if score #TurnColor ReversiData_201 matches 1 if block ~ ~ ~ black_stained_glass positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 run function reversi_201:game/stone/check

execute if score #TurnColor ReversiData_201 matches 0 if score #isSuccess ReversiData_201 matches 1 run setblock ~ ~ ~ black_stained_glass
execute if score #TurnColor ReversiData_201 matches 0 if score #isSuccess ReversiData_201 matches 1 unless score $sheep ReversiData_201 matches 1 positioned ~22064 ~ ~ run data modify entity @e[limit=1,type=armor_stand,tag=stone_201,y=38.6,distance=..0.05] ArmorItems[3].id set value "minecraft:black_concrete"
execute if score #TurnColor ReversiData_201 matches 0 if score #isSuccess ReversiData_201 matches 1 run scoreboard players add #StoneBlack ReversiData_201 1
execute if score #TurnColor ReversiData_201 matches 0 if score #isSuccess ReversiData_201 matches 1 run scoreboard players remove #StoneWhite ReversiData_201 1

execute if score #TurnColor ReversiData_201 matches 1 if score #isSuccess ReversiData_201 matches 1 run setblock ~ ~ ~ white_stained_glass
execute if score #TurnColor ReversiData_201 matches 1 if score #isSuccess ReversiData_201 matches 1 unless score $sheep ReversiData_201 matches 1 positioned ~22064 ~ ~ run data modify entity @e[limit=1,type=armor_stand,tag=stone_201,y=38.6,distance=..0.05] ArmorItems[3].id set value "minecraft:white_concrete"
execute if score #TurnColor ReversiData_201 matches 1 if score #isSuccess ReversiData_201 matches 1 run scoreboard players add #StoneWhite ReversiData_201 1
execute if score #TurnColor ReversiData_201 matches 1 if score #isSuccess ReversiData_201 matches 1 run scoreboard players remove #StoneBlack ReversiData_201 1

execute if score #isSuccess ReversiData_201 matches 1 if score $sheep ReversiData_201 matches 1 positioned ~22064 40.6 ~ run function reversi_201:game/stone/sheep/reput
execute if score #isSuccess ReversiData_201 matches 1 unless score $sheep ReversiData_201 matches 1 positioned ~22064 ~ ~ store result entity @e[limit=1,type=armor_stand,tag=stone_201,y=38.6,distance=..0.05] ArmorItems[3].tag.CustomModelData int 1 run scoreboard players get #CurrentSkin StoneSkin_201
execute if score #TurnColor ReversiData_201 matches 0 if block ~ ~ ~ black_stained_glass run scoreboard players set #isSuccess ReversiData_201 1
execute if score #TurnColor ReversiData_201 matches 1 if block ~ ~ ~ white_stained_glass run scoreboard players set #isSuccess ReversiData_201 1

execute if score #TurnColor ReversiData_201 matches 0 if score #isSuccess ReversiData_201 matches 1 run particle dust 0 0 0 1 ~22064 41 ~ 0.2 0.4 0.2 1 12 force
execute if score #TurnColor ReversiData_201 matches 1 if score #isSuccess ReversiData_201 matches 1 run particle dust 0.8 0.8 0.8 1 ~22064 41 ~ 0.2 0.4 0.2 1 12 force