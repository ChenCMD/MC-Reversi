scoreboard players remove #TickThroughputC ReversiData_201 10
#summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:gold_block"},NoGravity:1b,Time:599}
#チェックシステム
    #そのマスが石を置けるかのチェック
        tag @s remove isSuccess_201
        execute positioned ~ ~ ~ unless block ~ ~ ~ #reversi_201:stone_block run function reversi_201:game/turn/ai/check.run
    #多分行ける
        execute if score #StoneQuantity ReversiData_201 >= #AI-LastAlgorithm ReversiData_201 if score #RemainingDepth ReversiData_201 matches 1 run function reversi_201:game/turn/ai/algorithm/3rd.run
    #isSuccess付いてたら開放度確認
        execute if entity @s[tag=isSuccess_201] run function reversi_201:game/turn/ai/advanced/deep.success
#次のマス
    tp @s ~1 ~ ~
#次の列
    execute at @s if block ~ ~ ~ orange_stained_glass run tp @s -19998.5 ~ ~1
#次の列行ってるのに外周ブロックに乗ってたら終わり n=盤面のサイズ n+1tickで次のプレイヤーへ
scoreboard players reset #else ReversiData_201
    execute at @s if block ~ ~ ~ orange_stained_glass run function reversi_201:game/turn/ai/advanced/deep.end
#つぎ
    execute unless score #else ReversiData_201 matches 1 at @s if score #TickThroughputC ReversiData_201 matches 0 unless block ~ ~ ~ orange_stained_glass run schedule function reversi_201:game/turn/ai.mirror/advanced/deep.recursive 1t
    execute unless score #else ReversiData_201 matches 1 at @s if score #TickThroughputC ReversiData_201 matches 1.. unless block ~ ~ ~ orange_stained_glass run function reversi_201:game/turn/ai/advanced/deep.recursive