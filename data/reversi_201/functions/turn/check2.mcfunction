#チェックシステム
    #そのマスが石を置けるかのチェック
        execute if score $TurnColor ReversiData_201 matches 0 as @e[tag=CheckEntity_201] at @s positioned ~ ~-1.9 ~ unless entity @e[tag=Stone_201,distance=..0.25] if entity @e[tag=Stone_White_201,distance=..1.5] run function reversi_201:turn/check3b
        execute if score $TurnColor ReversiData_201 matches 1 as @e[tag=CheckEntity_201] at @s positioned ~ ~-1.9 ~ unless entity @e[tag=Stone_201,distance=..0.25] if entity @e[tag=Stone_Black_201,distance=..1.5] run function reversi_201:turn/check3w
    #isSuccess付いてたらカーソルセット
        execute if entity @e[tag=CheckEntity_201,tag=isSuccess_201] at @e[tag=CheckEntity_201] run summon slime ~ ~-3.01 ~ {Silent:1b,Tags:["NoVisible_201","CursorEntity_201","Entity_201"],Size:1,NoAI:1b,Team:"NoCollision_201",ActiveEffects:[{Id:14b,Amplifier:0b,Duration:19999980,ShowParticles:0b},{Id:11b,Amplifier:4b,Duration:19999980,ShowParticles:0b}]}
        execute if entity @e[tag=CheckEntity_201,tag=isSuccess_201] if score $TurnColor ReversiData_201 matches 0 at @e[tag=CheckEntity_201] run summon item ~ ~-2 ~ {Tags:["NoVisible_201","SelectItem_201","Entity_201"],Item:{id:"black_concrete",Count:1b},PickupDelay:32767s,Age:-32768s,NoGravity:1b,Glowing:0b}
        execute if entity @e[tag=CheckEntity_201,tag=isSuccess_201] if score $TurnColor ReversiData_201 matches 1 at @e[tag=CheckEntity_201] run summon item ~ ~-2 ~ {Tags:["NoVisible_201","SelectItem_201","Entity_201"],Item:{id:"white_concrete",Count:1b},PickupDelay:32767s,Age:-32768s,NoGravity:1b,Glowing:0b}
        tag @e[tag=CheckEntity_201] remove isSuccess_201
#次のマス
    execute as @e[tag=CheckEntity_201] at @s run tp @s ^ ^ ^1
#次の列
    execute as @e[tag=CheckEntity_201] at @s if block ~ ~ ~ polished_diorite_slab run tp @s ^-1 ^ ^
    execute as @e[tag=CheckEntity_201] at @s if block ~ ~ ~ polished_diorite_slab store result entity @s Pos[0] double 0.1 run data get entity @e[tag=BoardPos_201,limit=1] Pos[0] 10
#つぎ
    execute at @e[tag=CheckEntity_201] unless block ~ ~ ~ polished_diorite_slab run schedule function reversi_201:turn/check2 1t
    #execute at @e[tag=CheckEntity_201] unless block ~ ~ ~ polished_diorite_slab run function reversi_201:turn/check2
#次の列行ってるのに外周ブロックに乗ってたら終わり n=盤面のサイズ n+1tickで次のプレイヤーへ
    execute at @e[tag=CheckEntity_201] if block ~ ~ ~ polished_diorite_slab run schedule function reversi_201:turn/next 1t
    execute as @e[tag=CheckEntity_201] at @s if block ~ ~ ~ polished_diorite_slab run kill @s