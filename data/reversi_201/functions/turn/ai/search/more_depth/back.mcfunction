#最良値は相手ターンの場合加算 自身ターンの場合減算
    #最良評価値を持つ一か所に絞る
        execute as @e[tag=Candidate_201,tag=!InactiveCandidate_201] unless score @s SortValue_201 matches 0..0 run kill @s
    #最良評価値を上に渡す
        execute if score #MoreDepthTurnColor ReversiData_201 = $vsAI ReversiData_201 run scoreboard players operation @e[limit=1,tag=Candidate_201,tag=TestPoint_201] Evaluation_201 -= @e[limit=1,tag=Candidate_201,tag=!InactiveCandidate_201] Evaluation_201
        execute if score #MoreDepthTurnColor ReversiData_201 = $vsAI ReversiData_201 run scoreboard players operation @e[limit=1,tag=Candidate_201,tag=TestPoint_201] Evaluation_201 += @e[limit=1,tag=Candidate_201,tag=!InactiveCandidate_201] Evaluation_201
    #掘ったタグ
        tag @e[limit=1,tag=TestPoint_201,tag=!AlreadyTestPoint_201,tag=!InactiveTestPoint_201] add AlreadyTestPoint_201
    #さよなら～
        kill @e[limit=1,tag=Candidate_201,tag=!InactiveCandidate_201]
    #一つ上の盤面にまだ掘ってない候補があったら掘る 無ければ一つ上のInactiveと2つ上のInactiveTestPointを外してさらにここを実行する
        execute at @e[tag=TestPoint_201,tag=!InactiveTestPoint_201] positioned 2064 ~ 16 if entity @e[tag=Candidate_201,tag=InactiveCandidate_201,tag=!AlreadyTestPoint_201,dx=20,dy=0,dz=20] run schedule function reversi_201:turn/ai/search/more_depth/other 1t
        execute at @e[tag=TestPoint_201,tag=!InactiveTestPoint_201] positioned 2064 ~ 16 unless entity @e[tag=Candidate_201,tag=InactiveCandidate_201,tag=!AlreadyTestPoint_201,dx=20,dy=0,dz=20] run function reversi_201:turn/ai/search/more_depth/more_back