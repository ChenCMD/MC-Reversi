#リセット処理
    function reversi_201:game/reset
#開始
    #石のスキン取得
        scoreboard players operation #CurrentSkin StoneSkin_201 = @a[limit=1,tag=Player_Black_201,scores={playing_000=201}] StoneSkin_201
        scoreboard players operation #CurrentSkin StoneSkin_201 = @a[limit=1,tag=Player_White_201,scores={playing_000=201}] StoneSkin_201
        scoreboard players add #CurrentSkin StoneSkin_201 2000
    #初期石配置
        setblock 2069 10 20 white_stained_glass
        summon armor_stand 2069 38.6 20 {ArmorItems:[{},{},{},{id:"minecraft:white_concrete",Count:1b,tag:{CustomModelData:0}}],Tags:[stone_201,Entity_201],NoGravity:1b,Invisible:1b,Invulnerable:1b}
        execute store result entity @e[limit=1,type=armor_stand,tag=stone_201,x=2069.5,y=38.6,z=20.5,distance=..0.05] ArmorItems[3].tag.CustomModelData int 1 run scoreboard players get #CurrentSkin StoneSkin_201

        setblock 2069 10 21 black_stained_glass
        summon armor_stand 2069 38.6 21 {ArmorItems:[{},{},{},{id:"minecraft:black_concrete",Count:1b,tag:{CustomModelData:0}}],Tags:[stone_201,Entity_201],NoGravity:1b,Invisible:1b,Invulnerable:1b}
        execute store result entity @e[limit=1,type=armor_stand,tag=stone_201,x=2069.5,y=38.6,z=21.5,distance=..0.05] ArmorItems[3].tag.CustomModelData int 1 run scoreboard players get #CurrentSkin StoneSkin_201

        setblock 2068 10 20 black_stained_glass
        summon armor_stand 2068 38.6 20 {ArmorItems:[{},{},{},{id:"minecraft:black_concrete",Count:1b,tag:{CustomModelData:0}}],Tags:[stone_201,Entity_201],NoGravity:1b,Invisible:1b,Invulnerable:1b}
        execute store result entity @e[limit=1,type=armor_stand,tag=stone_201,x=2068.5,y=38.6,z=20.5,distance=..0.05] ArmorItems[3].tag.CustomModelData int 1 run scoreboard players get #CurrentSkin StoneSkin_201

        setblock 2068 10 21 white_stained_glass
        summon armor_stand 2068 38.6 21 {ArmorItems:[{},{},{},{id:"minecraft:white_concrete",Count:1b,tag:{CustomModelData:0}}],Tags:[stone_201,Entity_201],NoGravity:1b,Invisible:1b,Invulnerable:1b}
        execute store result entity @e[limit=1,type=armor_stand,tag=stone_201,x=2068.5,y=38.6,z=21.5,distance=..0.05] ArmorItems[3].tag.CustomModelData int 1 run scoreboard players get #CurrentSkin StoneSkin_201

        scoreboard players set $StoneBlack ReversiData_201 2
        scoreboard players set $StoneWhite ReversiData_201 2
        scoreboard players set $StoneQuantity ReversiData_201 4
    #石の最大数定義
        scoreboard players set $StoneQuantityMAX ReversiData_201 64
    #AIの行動変化タイミング定義
        scoreboard players set #AI-LastAlgorithm ReversiData_201 61
        scoreboard players operation #AI-LastAlgorithm ReversiData_201 -= $AI-Lv ReversiData_201
        scoreboard players set #LastDepth ReversiData_201 64
        scoreboard players operation #LastDepth ReversiData_201 -= #AI-LastAlgorithm ReversiData_201
    #黒にカーソルセット = スタート
        scoreboard players set $TurnColor ReversiData_201 0
        schedule function reversi_201:game/turn/turn_checker 1s