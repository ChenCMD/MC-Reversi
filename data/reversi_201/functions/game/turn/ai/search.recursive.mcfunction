scoreboard players remove #TickThroughputC ReversiData_201 9
#チェックシステム
    #そのマスが石を置けるかのチェック
        tag @s remove isSuccess_201
        execute positioned ~ 10 ~ unless block ~ 10 ~ #reversi_201:stone_block run function reversi_201:game/turn/ai/check.run
    #isSuccess付いてたら開放度確認
        execute if entity @s[tag=isSuccess_201] run function reversi_201:game/turn/ai/search.success
#次のマス
    tp @s ~1 ~ ~
#次の列
    execute at @s if block ~ ~ ~ orange_stained_glass run tp @s -19998.5 ~ ~1
scoreboard players reset #else ReversiData_201
#次の列行ってるのに外周ブロックに乗ってたら終わり n=盤面のサイズ
    execute at @s if block ~ ~ ~ orange_stained_glass run function reversi_201:game/turn/ai/search.end
#つぎ
    execute unless score #else ReversiData_201 matches 1 if score #TickThroughputC ReversiData_201 matches ..0 at @s unless block ~ ~ ~ orange_stained_glass run schedule function reversi_201:game/turn/ai.mirror/search.recursive 1t
    execute unless score #else ReversiData_201 matches 1 if score #TickThroughputC ReversiData_201 matches 1.. at @s unless block ~ ~ ~ orange_stained_glass run function reversi_201:game/turn/ai/search.recursive