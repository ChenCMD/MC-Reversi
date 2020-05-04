#チェックシステム
    #そのマスが石を置けるかのチェック
        execute if score #MoreDepthTurnColor ReversiData_201 matches 0 positioned ~ ~ ~ unless block ~ ~ ~ #reversi_201:stone_block run function reversi_201:turn/player/check/black
        execute if score #MoreDepthTurnColor ReversiData_201 matches 1 positioned ~ ~ ~ unless block ~ ~ ~ #reversi_201:stone_block run function reversi_201:turn/player/check/white
    #isSuccess付いてたらカーソルセット
        execute if score #MoreDepthTurnColor ReversiData_201 = $vsAI ReversiData_201 if entity @s[tag=isSuccess_201] run scoreboard players remove $Tmp Evaluation_201 1
        execute unless score #MoreDepthTurnColor ReversiData_201 = $vsAI ReversiData_201 if entity @s[tag=isSuccess_201] run scoreboard players add $Tmp Evaluation_201 1
        tag @s remove isSuccess_201
#次のマス
    tp @s ^ ^ ^1
#次の列
    execute at @s if block ~ ~ ~ orange_stained_glass run tp @s ^-1 ^ ^
    execute at @s if block ~ ~ ~ orange_stained_glass store result entity @s Pos[0] double 0.1 run data get entity @e[limit=1,tag=BoardPos_201] Pos[0] 10
#次の列行ってるのに外周ブロックに乗ってたら終わり n=盤面のサイズ n+1tickで次のプレイヤーへ
    execute at @s if block ~ ~ ~ orange_stained_glass run kill @s
#つぎ メモ: ここどうしても複数tickに跨がせることが出来ないから処理数だけ減らして無理やりやる
    scoreboard players remove #TickThroughputC ReversiData_201 1
    execute at @s unless block ~ ~ ~ orange_stained_glass run function reversi_201:turn/ai/search/pre_last_checker_loop