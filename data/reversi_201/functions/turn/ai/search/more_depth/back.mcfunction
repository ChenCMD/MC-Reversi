#やつを消せ。
kill @e[limit=1,tag=Checker_201,tag=!InactiveChecker_201]
#最良値は相手ターンの場合加算 自身ターンの場合減算
    #探索深度の加算
        scoreboard players add #RemainingDepth ReversiData_201 1
    #最良評価値を持つ一か所に絞る
        function reversi_201:turn/ai/search/sort/run
        #execute if score #RemainingDepth ReversiData_201 = $AI-Lv ReversiData_201 as @e[tag=Candidate_201,tag=!InactiveCandidate_201] run tellraw @a [{"nbt":"Pos","entity":"@s"},{"text":" Eval: "},{"score":{"objective":"Evaluation_201","name":"@s"}},{"text":" | Sort: "},{"score":{"objective":"SortValue_201","name":"@s"}}]
        execute as @e[tag=Candidate_201,tag=!InactiveCandidate_201] unless score @s SortValue_201 matches 0 run kill @s
    #最良評価値を上に渡す
        #execute unless score #RemainingDepth ReversiData_201 = $AI-Lv ReversiData_201 at @e[limit=1,tag=Candidate_201,tag=TestPoint_201,tag=!InactiveTestPoint_201] run function debug/block_particle
        execute unless score #RemainingDepth ReversiData_201 = $AI-Lv ReversiData_201 unless score #MoreDepthTurnColor ReversiData_201 = $vsAI ReversiData_201 run scoreboard players operation @e[limit=1,tag=Candidate_201,tag=TestPoint_201,tag=!InactiveTestPoint_201] Evaluation_201 -= @e[limit=1,tag=Candidate_201,tag=!InactiveCandidate_201] Evaluation_201
        execute unless score #RemainingDepth ReversiData_201 = $AI-Lv ReversiData_201 if score #MoreDepthTurnColor ReversiData_201 = $vsAI ReversiData_201 run scoreboard players operation @e[limit=1,tag=Candidate_201,tag=TestPoint_201,tag=!InactiveTestPoint_201] Evaluation_201 += @e[limit=1,tag=Candidate_201,tag=!InactiveCandidate_201] Evaluation_201
    #掘ったタグ
        tag @e[limit=1,tag=TestPoint_201,tag=!AlreadyTestPoint_201,tag=!InactiveTestPoint_201] add AlreadyTestPoint_201
    #石の配置
        execute if score #RemainingDepth ReversiData_201 = $AI-Lv ReversiData_201 run schedule function reversi_201:turn/select_non_player 1t
    #さよなら～
        execute unless score #RemainingDepth ReversiData_201 = $AI-Lv ReversiData_201 run kill @e[limit=1,tag=Candidate_201,tag=!InactiveCandidate_201]
    #一つ上の盤面にまだ掘ってない候補があったら掘る 無ければ一つ上のInactiveと2つ上のInactiveTestPointを外してさらにここを実行する
        execute unless score #RemainingDepth ReversiData_201 = $AI-Lv ReversiData_201 at @e[tag=TestPoint_201,tag=!InactiveTestPoint_201] positioned 2064 ~ 16 if entity @e[tag=Candidate_201,tag=InactiveCandidate_201,tag=!AlreadyTestPoint_201,dx=15,dy=0,dz=15] run schedule function reversi_201:turn/ai/search/more_depth/other 1t
        execute unless score #RemainingDepth ReversiData_201 = $AI-Lv ReversiData_201 at @e[tag=TestPoint_201,tag=!InactiveTestPoint_201] positioned 2064 ~ 16 unless entity @e[tag=Candidate_201,tag=InactiveCandidate_201,tag=!AlreadyTestPoint_201,dx=15,dy=0,dz=15] run function reversi_201:turn/ai/search/more_depth/more_back