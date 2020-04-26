#リセット処理
    function reversi_201:core/reset
#開始
    #判定消すチームに入れる
        team join NoCollision_201 @a[tag=Player_Black_201]
        team join NoCollision_201 @a[tag=Player_White_201]
    #初期石配置
        summon armor_stand 2065 10 17 {Rotation:[-45.0f,0f],Marker:1b,Invisible:1b,Tags:[Board_201,Entity_201]}
        scoreboard players operation #BoardSizeC ReversiData_201 = $BoardSize ReversiData_201
        scoreboard players operation #BoardSizeC ReversiData_201 /= #2 num_000
        execute as @e[tag=Board_201] at @s run function reversi_201:core/size_set_loop
        execute at @e[tag=Board_201] run setblock ~0 10 ~0 white_concrete
        execute at @e[tag=Board_201] run summon armor_stand ~0 38.6 ~0 {ArmorItems:[{},{},{},{id:"minecraft:white_concrete",Count:1b}],Fire:32767s,Tags:[fire_000,stone_201,Entity_201],Marker:1b,Invisible:1b}
        execute at @e[tag=Board_201] run setblock ~0 10 ~1 black_concrete
        execute at @e[tag=Board_201] run summon armor_stand ~0 38.6 ~1 {ArmorItems:[{},{},{},{id:"minecraft:black_concrete",Count:1b}],Fire:32767s,Tags:[fire_000,stone_201,Entity_201],Marker:1b,Invisible:1b}
        execute at @e[tag=Board_201] run setblock ~1 10 ~0 black_concrete
        execute at @e[tag=Board_201] run summon armor_stand ~1 38.6 ~0 {ArmorItems:[{},{},{},{id:"minecraft:black_concrete",Count:1b}],Fire:32767s,Tags:[fire_000,stone_201,Entity_201],Marker:1b,Invisible:1b}
        execute at @e[tag=Board_201] run setblock ~1 10 ~1 white_concrete
        execute at @e[tag=Board_201] run summon armor_stand ~1 38.6 ~1 {ArmorItems:[{},{},{},{id:"minecraft:white_concrete",Count:1b}],Fire:32767s,Tags:[fire_000,stone_201,Entity_201],Marker:1b,Invisible:1b}
        kill @e[tag=Board_201]

        scoreboard players set $StoneBlack ReversiData_201 2
        scoreboard players set $StoneWhite ReversiData_201 2
        scoreboard players set $StoneQuantity ReversiData_201 4
        scoreboard players operation $StoneQuantityMAX ReversiData_201 = $BoardSize ReversiData_201
        scoreboard players operation $StoneQuantityMAX ReversiData_201 *= $BoardSize ReversiData_201
    #黒にカーソルセット = スタート
        scoreboard players set $vsAI ReversiData_201 1
        scoreboard players set $TurnColor ReversiData_201 0
        schedule function reversi_201:turn/turn_checker 1s