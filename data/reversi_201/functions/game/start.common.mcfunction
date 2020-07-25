#リセット処理
    function reversi_201:game/reset
#ホログラムclear
    kill @e[tag=hologram_001,scores={hologram_id_001=2000..2100}]
    kill @e[tag=hologram.overlay.0_201]
    kill @e[tag=hologram.overlay.1_201]
#ホログラム設定
    data modify storage utility_001:hologram_util TextGroup set value [{Offset:[3.2f,3.0f],Setting:{CursorCollider:1b,TextInterpret:1b,TextSpaceWidth:0.22f},HologramID:2099,Text:['{"text":"強","color":"red","bold":true}','{"text":"制","color":"red","bold":true}','{"text":"終","color":"red","bold":true}','{"text":"了","color":"red","bold":true}']}]
    execute positioned 2072.5 44.0 38.8 rotated 90 0 run function utility_001:hologram_util/api/create
#隔離
    execute if score $isolation ReversiData_201 matches 1 run fill 2056 43 23 2056 40 18 minecraft:dark_oak_fence[north=true,south=true]
    execute if score $isolation ReversiData_201 matches 1 run fill 2081 40 23 2081 43 18 minecraft:dark_oak_fence[north=true,south=true]
    execute if score $isolation ReversiData_201 matches 1 run tp @a[tag=Player_White_201,tag=Player_Black_201,scores={playing_000=201},x=2056.5,y=38.0,z=8.5,dx=25,dy=4,dz=35] 2055.5 40.0 21.0 90 0
#長考処理の初期化
    scoreboard players set #Think ReversiData_201 1
    execute unless score $Think.MAX ReversiData_201 matches 1.. unless score $Think.COUNT ReversiData_201 matches 1.. run scoreboard players set #Think ReversiData_201 0
    execute if score #Think ReversiData_201 matches 1 run function reversi_201:game/turn/player/long_think/init
#初期石配置
    setblock -19995 10 20 white_stained_glass
    setblock -19995 10 21 black_stained_glass
    setblock -19996 10 20 black_stained_glass
    setblock -19996 10 21 white_stained_glass
    execute if score $sheep ReversiData_201 matches 1 run function reversi_201:game/stone/sheep/init_put
    execute unless score $sheep ReversiData_201 matches 1 run function reversi_201:game/stone/util/init_put
    scoreboard players set #StoneBlack ReversiData_201 2
    scoreboard players set #StoneWhite ReversiData_201 2
    scoreboard players set #StoneQuantity ReversiData_201 4
#石の最大数定義
    scoreboard players set #StoneQuantityMAX ReversiData_201 64