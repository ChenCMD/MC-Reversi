#リセット処理
    function reversi_201:reset
#開始
    #判定消すチームに入れる
        team join NoCollision_201 @a[tag=Player_Black_201]
        team join NoCollision_201 @a[tag=Player_White_201]
    #初期石配置
        execute at @e[tag=BoardPos_201] run summon armor_stand ~3 ~-1.9 ~3 {Fire:1200s,Tags:["fire_000","Stone_201","Stone_White_201","Entity_201"],Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:white_concrete",Count:1b}]}
        execute at @e[tag=BoardPos_201] run summon armor_stand ~3 ~-1.9 ~4 {Fire:1200s,Tags:["fire_000","Stone_201","Stone_Black_201","Entity_201"],Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:black_concrete",Count:1b}]}
        execute at @e[tag=BoardPos_201] run summon armor_stand ~4 ~-1.9 ~3 {Fire:1200s,Tags:["fire_000","Stone_201","Stone_Black_201","Entity_201"],Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:black_concrete",Count:1b}]}
        execute at @e[tag=BoardPos_201] run summon armor_stand ~4 ~-1.9 ~4 {Fire:1200s,Tags:["fire_000","Stone_201","Stone_White_201","Entity_201"],Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:white_concrete",Count:1b}]}
    #黒にカーソルセット = スタート
        scoreboard players set $TurnColor ReversiData_201 0
        schedule function reversi_201:turn/check 1s