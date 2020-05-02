#メモ: Lv1 checkerから実行
#clone
    summon armor_stand 2065 ~ 17 {Marker:1b,Invisible:1b,Tags:[Board_201,Entity_201]}
    execute store result entity @e[limit=1,tag=Board_201] Pos[0] double 0.001 run data get entity @e[limit=1,tag=BoardSize_201] Pos[0] 1000
    execute store result entity @e[limit=1,tag=Board_201] Pos[2] double 0.001 run data get entity @e[limit=1,tag=BoardSize_201] Pos[2] 1000
    execute at @e[tag=Board_201] run clone 2065 ~ 17 ~ ~ ~ 2065 ~-1 17
    kill @e[tag=Board_201]
#Checker
    #一つ上のChecker消し飛ばす
        kill @s
    #新しいCheckerを召喚
        summon armor_stand 2065 ~-1 17 {Tags:[Checker_201,Entity_201],Marker:1b,Invisible:0b,Rotation:[-90.0f,0f]}
        summon armor_stand ~ ~ ~ {Tags:[DEBUG],Marker:1b}
        kill @e[tag=DEBUG]
#先読みの盤面のターンが白か黒かの設定 #RemainingDepthが奇数なら相手の色のはず！！！！！！
    scoreboard players add #MoreDepthTurnColor ReversiData_201 1
    scoreboard players operation #MoreDepthTurnColor ReversiData_201 %= #2 num_000
#実際に石を配置する
    #一か所の選出
        execute as @e[limit=1,tag=Candidate_201,tag=!InactiveCandidate_201,tag=!AlreadyTestPoint_201] at @s run tag @s add TestPoint_201
    #候補の無効化
        tag @e[tag=Candidate_201,tag=!InactiveCandidate_201] add InactiveCandidate_201
    #clone済みの盤面に石を置く
        #盤面のターンの色に応じた石の配置
            execute if score #MoreDepthTurnColor ReversiData_201 matches 0 as @e[limit=1,tag=TestPoint_201] at @s positioned ~ ~-1 ~ run function reversi_201:turn/ai/search/more_depth/stone/white/set
            execute if score #MoreDepthTurnColor ReversiData_201 matches 1 as @e[limit=1,tag=TestPoint_201] at @s positioned ~ ~-1 ~ run function reversi_201:turn/ai/search/more_depth/stone/black/set
    #先読み用の再帰マネージャーを呼び出す
        function reversi_201:turn/ai/search/more_depth/recursive_manager