#集計
    execute at @e[tag=AggregateEntity_201] positioned ~ ~ ~ if block ~ ~ ~ white_stained_glass run scoreboard players add $StoneWhite ReversiData_201 1
    execute at @e[tag=AggregateEntity_201] positioned ~ ~ ~ if block ~ ~ ~ black_stained_glass run scoreboard players add $StoneBlack ReversiData_201 1
#actionbarに表示
    title @a actionbar [{"score":{"objective":"ReversiData_201","name":"$StoneWhite"},"color":"white","bold":true},{"text":" : ","color":"gold","bold":false},{"score":{"objective":"ReversiData_201","name":"$StoneBlack"},"color":"dark_gray","bold":true}]
#演出
    execute at @e[tag=AggregateEntity_201] positioned ~ ~ ~ if block ~ ~ ~ white_stained_glass run particle dust 1 1 1 1 ~ 40.6 ~ 0.2 0 0.2 1 8
    execute at @e[tag=AggregateEntity_201] positioned ~ ~ ~ if block ~ ~ ~ black_stained_glass run particle dust 0 0 0 1 ~ 40.6 ~ 0.2 0 0.2 1 8
    execute at @e[tag=AggregateEntity_201] positioned ~ ~ ~ if block ~ ~ ~ #reversi_201:stone_block run playsound block.note_block.bell block @a ~ 40.6 ~ 0.5 1.5 1
#次のマス
    execute as @e[tag=AggregateEntity_201] at @s run tp @s ~1 ~ ~
#次の列
    execute as @e[tag=AggregateEntity_201] at @s if block ~ ~ ~ orange_stained_glass run tp @s 2065.5 ~ ~1
#つぎ
    execute at @e[tag=AggregateEntity_201] unless block ~ ~ ~ orange_stained_glass run schedule function reversi_201:end/direct2 2t
#次の列行ってるのに外周ブロックに乗ってたら終わり
    execute at @e[tag=AggregateEntity_201] if block ~ ~ ~ orange_stained_glass run schedule function reversi_201:end/end 25t