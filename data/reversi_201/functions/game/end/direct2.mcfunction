#集計
    execute at @e[tag=AggregateEntity_201,distance=..50,x=-19995.0,y=11.0,z=21.0] positioned ~ ~ ~ if block ~ ~ ~ white_stained_glass run scoreboard players add #StoneWhite ReversiData_201 1
    execute at @e[tag=AggregateEntity_201,distance=..50,x=-19995.0,y=11.0,z=21.0] positioned ~ ~ ~ if block ~ ~ ~ black_stained_glass run scoreboard players add #StoneBlack ReversiData_201 1
#actionbarに表示
    title @a[scores={playing_000=201}] actionbar [{"score":{"objective":"ReversiData_201","name":"#StoneWhite"},"color":"white","bold":true},{"text":" : ","color":"gold","bold":false},{"score":{"objective":"ReversiData_201","name":"#StoneBlack"},"color":"dark_gray","bold":true}]
#演出
    execute at @e[tag=AggregateEntity_201,distance=..50,x=-19995.0,y=11.0,z=21.0] positioned ~ ~ ~ if block ~ ~ ~ white_stained_glass run particle dust 1 1 1 1 ~22064 41 ~ 0.2 0.4 0.2 1 12
    execute at @e[tag=AggregateEntity_201,distance=..50,x=-19995.0,y=11.0,z=21.0] positioned ~ ~ ~ if block ~ ~ ~ black_stained_glass run particle dust 0 0 0 1 ~22064 41 ~ 0.2 0.4 0.2 1 12
    execute at @e[tag=AggregateEntity_201,distance=..50,x=-19995.0,y=11.0,z=21.0] positioned ~ ~ ~ if block ~ ~ ~ #reversi_201:stone_block run playsound block.note_block.bell block @a[scores={playing_000=201}] ~22064 40.6 ~ 0.5 1.5 1
#次のマス
    execute as @e[tag=AggregateEntity_201,distance=..50,x=-19995.0,y=11.0,z=21.0] at @s run tp @s ~1 ~ ~
#次の列
    execute as @e[tag=AggregateEntity_201,distance=..50,x=-19995.0,y=11.0,z=21.0] at @s if block ~ ~ ~ orange_stained_glass run tp @s -19998.5 ~ ~1
#つぎ
    execute at @e[tag=AggregateEntity_201,distance=..50,x=-19995.0,y=11.0,z=21.0] unless block ~ ~ ~ orange_stained_glass run schedule function reversi_201:game/end/direct2 2t
#次の列行ってるのに外周ブロックに乗ってたら終わり
    execute at @e[tag=AggregateEntity_201,distance=..50,x=-19995.0,y=11.0,z=21.0] if block ~ ~ ~ orange_stained_glass run schedule function reversi_201:game/end/end 25t