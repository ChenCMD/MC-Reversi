particle flame ~ 41 ~ 0 0 0 0 5 force
#チェックシステム
    #そのマスが石を置けるかのチェック
        execute if score $TurnColor ReversiData_201 matches 0 positioned ~ 10 ~ unless block ~ 10 ~ #reversi_201:stone_block run function reversi_201:turn/player/check/black
        execute if score $TurnColor ReversiData_201 matches 1 positioned ~ 10 ~ unless block ~ 10 ~ #reversi_201:stone_block run function reversi_201:turn/player/check/white
    #isSuccess付いてたらカーソルセット
        execute if entity @s[tag=isSuccess_201] run function reversi_201:turn/player/search/success
#次のマス
    tp @s ^ ^ ^1
#次の列
    execute at @s if block ~ ~ ~ white_stained_glass run tp @s ^-1 ^ ^
    execute at @s if block ~ ~ ~ white_stained_glass store result entity @s Pos[0] double 0.1 run data get entity @e[limit=1,tag=BoardPos_201] Pos[0] 10
#次の列行ってるのに外周ブロックに乗ってたら終わり n=盤面のサイズ n+1tickで次のプレイヤーへ
    execute at @s if block ~ ~ ~ white_stained_glass run schedule function reversi_201:turn/player/end 1t
    execute at @s if block ~ ~ ~ white_stained_glass run kill @s
#つぎ
    scoreboard players remove #TickThroughputC ReversiData_201 1
    execute at @s if score #TickThroughputC ReversiData_201 matches ..0 unless block ~ ~ ~ white_stained_glass run schedule function reversi_201:turn/player/search/recursive_manager 1t
    execute at @s if score #TickThroughputC ReversiData_201 matches 1.. unless block ~ ~ ~ white_stained_glass run function reversi_201:turn/player/search/1