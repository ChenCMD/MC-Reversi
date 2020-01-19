#とりあえず黒の石だったらRegisterStone_201付与
    execute as @e[distance=..0.25,tag=Stone_Black_201] run tag @s add RegisterStone_201
#RegisterStone_201付与されてたら次のマス見る
    execute if entity @e[distance=..0.25,tag=RegisterStone_201] positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 run function reversi_201:stone/white/check
#白の石あったらRegisterStone_201に操作実行
    #パーティクル
        execute if entity @e[distance=..0.25,tag=Stone_White_201] as @e[tag=RegisterStone_201] at @s run particle dust 1 1 1 1 ~ ~2 ~ 0.2 0 0.2 1 8 force
    #石反転
        execute if entity @e[distance=..0.25,tag=Stone_White_201] as @e[tag=RegisterStone_201] run data modify entity @s ArmorItems[3].id set value "minecraft:white_concrete"
    #タグ関連変更
        execute if entity @e[distance=..0.25,tag=Stone_White_201] run tag @e[tag=RegisterStone_201] add Stone_White_201
        execute if entity @e[distance=..0.25,tag=Stone_White_201] run tag @e[tag=RegisterStone_201] remove Stone_Black_201
        execute if entity @e[distance=..0.25,tag=Stone_White_201] run tag @e[tag=RegisterStone_201] remove RegisterStone_201
#結局無かった
    execute unless entity @e[distance=..0.25,tag=Stone_201] run tag @e[tag=RegisterStone_201] remove RegisterStone_201