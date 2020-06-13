#カーソル位置に石
    scoreboard players add $StoneQuantity ReversiData_201 1
    execute if score $TurnColor ReversiData_201 matches 0 run scoreboard players add $StoneBlack ReversiData_201 1
    execute if score $TurnColor ReversiData_201 matches 0 run setblock ~ ~ ~ black_stained_glass
    execute if score $TurnColor ReversiData_201 matches 0 run summon armor_stand ~ 38.6 ~ {ArmorItems:[{},{},{},{id:"minecraft:black_concrete",Count:1b,tag:{CustomModelData:2002}}],Tags:[stone_201,Entity_201],NoGravity:1b,Invisible:1b,Invulnerable:1b}
    execute if score $TurnColor ReversiData_201 matches 1 run scoreboard players add $StoneWhite ReversiData_201 1
    execute if score $TurnColor ReversiData_201 matches 1 run setblock ~ ~ ~ white_stained_glass
    execute if score $TurnColor ReversiData_201 matches 1 run summon armor_stand ~ 38.6 ~ {ArmorItems:[{},{},{},{id:"minecraft:white_concrete",Count:1b,tag:{CustomModelData:2002}}],Tags:[stone_201,Entity_201],NoGravity:1b,Invisible:1b,Invulnerable:1b}
    #execute if score $StoneQuantity ReversiData_201 > #AI-LastAlgorithm ReversiData_201 run scoreboard players remove #LastDepth ReversiData_201 1
    # #DEBUG log
    # scoreboard players set #logScore ReversiData_201 0
#石の判定
    execute rotated 000 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 unless block ~ ~ ~ orange_stained_glass unless blocks ^ ^ ^-1.2071 ^ ^ ^-1.2071 ~ ~ ~ all run function reversi_201:stone/check
    scoreboard players set #isSuccess ReversiData_201 0
    execute rotated 045 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 unless block ~ ~ ~ orange_stained_glass unless blocks ^ ^ ^-1.2071 ^ ^ ^-1.2071 ~ ~ ~ all run function reversi_201:stone/check
    scoreboard players set #isSuccess ReversiData_201 0
    execute rotated 090 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 unless block ~ ~ ~ orange_stained_glass unless blocks ^ ^ ^-1.2071 ^ ^ ^-1.2071 ~ ~ ~ all run function reversi_201:stone/check
    scoreboard players set #isSuccess ReversiData_201 0
    execute rotated 135 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 unless block ~ ~ ~ orange_stained_glass unless blocks ^ ^ ^-1.2071 ^ ^ ^-1.2071 ~ ~ ~ all run function reversi_201:stone/check
    scoreboard players set #isSuccess ReversiData_201 0
    execute rotated 180 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 unless block ~ ~ ~ orange_stained_glass unless blocks ^ ^ ^-1.2071 ^ ^ ^-1.2071 ~ ~ ~ all run function reversi_201:stone/check
    scoreboard players set #isSuccess ReversiData_201 0
    execute rotated 225 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 unless block ~ ~ ~ orange_stained_glass unless blocks ^ ^ ^-1.2071 ^ ^ ^-1.2071 ~ ~ ~ all run function reversi_201:stone/check
    scoreboard players set #isSuccess ReversiData_201 0
    execute rotated 270 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 unless block ~ ~ ~ orange_stained_glass unless blocks ^ ^ ^-1.2071 ^ ^ ^-1.2071 ~ ~ ~ all run function reversi_201:stone/check
    scoreboard players set #isSuccess ReversiData_201 0
    execute rotated 315 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 unless block ~ ~ ~ orange_stained_glass unless blocks ^ ^ ^-1.2071 ^ ^ ^-1.2071 ~ ~ ~ all run function reversi_201:stone/check
    scoreboard players set #isSuccess ReversiData_201 0
#カーソル更新
    scoreboard players add $TurnColor ReversiData_201 1
    scoreboard players operation $TurnColor ReversiData_201 %= #2 num_000
    function reversi_201:turn/turn_checker