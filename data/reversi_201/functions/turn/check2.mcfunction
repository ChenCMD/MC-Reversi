#チェックシステム
    #そのマスが石を置けるかのチェック
        execute if score #TurnColor ReversiData_201 matches 0 as @e[tag=CheckEntity_201] at @s positioned ~ 5 ~ unless block ~ 5 ~ #reversi_201:stone_block run function reversi_201:turn/check3b
        execute if score #TurnColor ReversiData_201 matches 1 as @e[tag=CheckEntity_201] at @s positioned ~ 5 ~ unless block ~ 5 ~ #reversi_201:stone_block run function reversi_201:turn/check3w
    #isSuccess付いてたらカーソルセット
        execute if entity @e[tag=CheckEntity_201,tag=isSuccess_201] at @e[tag=CheckEntity_201] run summon slime ~ 38 ~ {Silent:1b,Tags:[NoVisible_201,CursorEntity_201,Entity_201],Size:1,NoAI:1b,Team:NoCollision_201,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:19999980,ShowParticles:0b},{Id:11b,Amplifier:4b,Duration:19999980,ShowParticles:0b}]}
        execute if entity @e[tag=CheckEntity_201,tag=isSuccess_201] if score #TurnColor ReversiData_201 matches 0 at @e[tag=CheckEntity_201] run summon item ~ 39 ~ {Tags:[NoVisible_201,SelectItem_201,Entity_201],Item:{id:black_carpet,Count:1b},PickupDelay:32767s,Age:-32768s,NoGravity:1b,Glowing:0b}
        execute if entity @e[tag=CheckEntity_201,tag=isSuccess_201] if score #TurnColor ReversiData_201 matches 1 at @e[tag=CheckEntity_201] run summon item ~ 39 ~ {Tags:[NoVisible_201,SelectItem_201,Entity_201],Item:{id:white_carpet,Count:1b},PickupDelay:32767s,Age:-32768s,NoGravity:1b,Glowing:0b}
        tag @e[tag=CheckEntity_201] remove isSuccess_201
#次のマス
    execute as @e[tag=CheckEntity_201] at @s run tp @s ^ ^ ^1
#次の列
    execute as @e[tag=CheckEntity_201] at @s if block ~ ~ ~ white_stained_glass run tp @s ^-1 ^ ^
    execute as @e[tag=CheckEntity_201] at @s if block ~ ~ ~ white_stained_glass store result entity @s Pos[0] double 0.1 run data get entity @e[limit=1,tag=BoardPos_201] Pos[0] 10
#次の列行ってるのに外周ブロックに乗ってたら終わり n=盤面のサイズ n+1tickで次のプレイヤーへ
    execute at @e[tag=CheckEntity_201] if block ~ ~ ~ white_stained_glass run schedule function reversi_201:turn/next 1t
    execute as @e[tag=CheckEntity_201] at @s if block ~ ~ ~ white_stained_glass run kill @s
#つぎ
    scoreboard players remove #TickThroughputC ReversiData_201 1
    execute at @e[tag=CheckEntity_201] if score #TickThroughputC ReversiData_201 matches 1.. unless block ~ ~ ~ white_stained_glass run function reversi_201:turn/check2
    execute at @e[tag=CheckEntity_201] if score #TickThroughputC ReversiData_201 matches ..0 unless block ~ ~ ~ white_stained_glass run schedule function reversi_201:turn/check2pre 1t
    #execute at @e[tag=CheckEntity_201] unless block ~ ~ ~ white_stained_glass run function reversi_201:turn/check2