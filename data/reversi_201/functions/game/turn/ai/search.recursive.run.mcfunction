#チェックシステム
    #そのマスが石を置けるかのチェック
        tag @s remove isSuccess_201
        execute positioned ~ 10 ~ unless block ~ 10 ~ #reversi_201:stone_block run function reversi_201:game/turn/ai/check.run
    #isSuccess付いてたら開放度確認
        execute if entity @s[tag=isSuccess_201] run function reversi_201:game/turn/ai/search.success
#次のマス
    tp @s ~1 ~ ~
#次の列
    execute at @s if block ~ ~ ~ orange_stained_glass run tp @s 2065.5 ~ ~1
#次の列行ってるのに外周ブロックに乗ってたら終わり n=盤面のサイズ n+1tickで次のプレイヤーへ
    execute at @s if block ~ ~ ~ orange_stained_glass run function reversi_201:game/turn/ai/search.end
#つぎ
    scoreboard players remove #TickThroughputC ReversiData_201 1
    execute at @s if score #TickThroughputC ReversiData_201 matches 0 unless block ~ ~ ~ orange_stained_glass run schedule function reversi_201:game/turn/ai/search.recursive.manager 1t
    execute at @s if score #TickThroughputC ReversiData_201 matches 1.. unless block ~ ~ ~ orange_stained_glass run function reversi_201:game/turn/ai/search.recursive.run