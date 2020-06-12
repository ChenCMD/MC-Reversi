#リセット処理
    function reversi_201:reset
#開始
    #判定消すチームに入れる
        team join NoCollision_201 @a[tag=Player_Black_201]
        team join NoCollision_201 @a[tag=Player_White_201]
    #初期石配置
        setblock 2069 10 20 white_stained_glass
        summon armor_stand 2069 38.6 20 {ArmorItems:[{},{},{},{id:"minecraft:white_concrete",Count:1b}],Fire:32767s,Tags:[fire_000,stone_201,Entity_201],Marker:1b,Invisible:1b}
        setblock 2069 10 21 black_stained_glass
        summon armor_stand 2069 38.6 21 {ArmorItems:[{},{},{},{id:"minecraft:black_concrete",Count:1b}],Fire:32767s,Tags:[fire_000,stone_201,Entity_201],Marker:1b,Invisible:1b}
        setblock 2068 10 20 black_stained_glass
        summon armor_stand 2068 38.6 20 {ArmorItems:[{},{},{},{id:"minecraft:black_concrete",Count:1b}],Fire:32767s,Tags:[fire_000,stone_201,Entity_201],Marker:1b,Invisible:1b}
        setblock 2068 10 21 white_stained_glass
        summon armor_stand 2068 38.6 21 {ArmorItems:[{},{},{},{id:"minecraft:white_concrete",Count:1b}],Fire:32767s,Tags:[fire_000,stone_201,Entity_201],Marker:1b,Invisible:1b}
        scoreboard players set $StoneBlack ReversiData_201 2
        scoreboard players set $StoneWhite ReversiData_201 2
        scoreboard players set $StoneQuantity ReversiData_201 4
    #石の最大数定義
        scoreboard players set $StoneQuantityMAX ReversiData_201 64
    #黒にカーソルセット = スタート
        scoreboard players set $vsAI ReversiData_201 -1
        scoreboard players set $TurnColor ReversiData_201 0
        schedule function reversi_201:turn/turn_checker 1s