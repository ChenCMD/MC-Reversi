#とりあえず白の石だったらRegisterStone_201付与
    execute as @e[distance=..0.25,tag=Stone_White_201] run tag @s add RegisterStone_201
#RegisterStone_201付与されてたら次のマス見る
    execute if entity @e[distance=..0.25,tag=RegisterStone_201] positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 run function reversi_201:turn/check4b
#黒の石あったら返り値付ける
    #タグ関連変更
        execute if entity @e[distance=..0.25,tag=Stone_Black_201] run tag @e[tag=RegisterStone_201] remove RegisterStone_201
    #isSuccessの返り値を設定
        execute if entity @e[distance=..0.25,tag=Stone_Black_201] run tag @s add isSuccess_201
#結局無かった
    execute unless entity @e[distance=..0.25,tag=Stone_201] run tag @e[tag=RegisterStone_201] remove RegisterStone_201