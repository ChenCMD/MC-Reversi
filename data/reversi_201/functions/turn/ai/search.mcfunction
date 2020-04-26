#execute run particle end_rod ~ 41 ~ 0 0 0 0 5 force
#チェックシステム
    #そのマスが石を置けるかのチェック+開放度
        execute if score $TurnColor ReversiData_201 matches 0 positioned ~ 10 ~ unless block ~ 10 ~ #reversi_201:stone_block run function reversi_201:turn/ai/check-openness/black
        execute if score $TurnColor ReversiData_201 matches 1 positioned ~ 10 ~ unless block ~ 10 ~ #reversi_201:stone_block run function reversi_201:turn/ai/check-openness/white
    #isSuccess付いてたら開放度確認
        execute if entity @s[tag=isSuccess_201] at @s run summon area_effect_cloud ~ 10 ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["Candidate_201","Entity_201"]}
        execute if entity @s[tag=isSuccess_201] at @s run scoreboard players operation @e[tag=Candidate_201,distance=..0.5] OpennessData_201 = $Tmp OpennessData_201
    #4隅補正
        execute if entity @s[tag=isSuccess_201] at @s if entity @e[tag=PreCorner_201,distance=..0.5] at @e[tag=Corner_201,distance=..1.5] if block ~ ~ ~ air at @s run scoreboard players add @e[tag=Candidate_201,distance=..0.5] OpennessData_201 16
        execute if entity @s[tag=isSuccess_201] at @s if entity @e[tag=Corner_201,distance=..0.5] run scoreboard players remove @e[tag=Candidate_201,distance=..0.5] OpennessData_201 16
        scoreboard players set $Tmp OpennessData_201 0
    #Lv2~処理
        execute if entity @s[tag=isSuccess_201] run scoreboard players operation $Recursion-depth ReversiData_201 = $AI-Lv ReversiData_201
        execute if entity @s[tag=isSuccess_201] run scoreboard players remove $Recursion-depth ReversiData_201 1
        execute if entity @s[tag=isSuccess_201] if score $Recursion-depth ReversiData_201 matches 1.. at @s run function reversi_201:turn/ai/lv2
        tag @s remove isSuccess_201
#次のマス
    tp @s ^ ^ ^1
#次の列
    execute at @s if block ~ ~ ~ white_stained_glass run tp @s ^-1 ^ ^
    execute at @s if block ~ ~ ~ white_stained_glass store result entity @s Pos[0] double 0.1 run data get entity @e[limit=1,tag=BoardPos_201] Pos[0] 10
#次の列行ってるのに外周ブロックに乗ってたら終わり n=盤面のサイズ n+1tickで次のプレイヤーへ
    execute at @s if block ~ ~ ~ white_stained_glass run schedule function reversi_201:turn/ai/end 10t replace
    execute at @s if block ~ ~ ~ white_stained_glass run kill @s
#つぎ
    scoreboard players remove #TickThroughputC ReversiData_201 1
    execute at @s if score #TickThroughputC ReversiData_201 matches 1.. unless block ~ ~ ~ white_stained_glass run function reversi_201:turn/ai/search
    execute at @s if score #TickThroughputC ReversiData_201 matches ..0 unless block ~ ~ ~ white_stained_glass run schedule function reversi_201:turn/ai/search_recursive_manager 1t