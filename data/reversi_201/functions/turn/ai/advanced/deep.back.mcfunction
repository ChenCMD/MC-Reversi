#最良値は相手ターンの場合加算 自身ターンの場合減算
        execute if entity @e[tag=Candidate_201,tag=DummyCandidate_201,tag=!InactiveCandidate_201] run scoreboard players operation #RemainingDepth ReversiData_201 >< #RemainingDepthC ReversiData_201
    #探索深度の加算
        scoreboard players add #RemainingDepth ReversiData_201 1
    #最良評価値を持つ一か所に絞る
        function reversi_201:turn/common/sort.run
            ##DEBUG ホログラムkill
            #execute if score $StoneQuantity ReversiData_201 < #AI-LastAlgorithm ReversiData_201 unless score #RemainingDepth ReversiData_201 = $AI-Lv ReversiData_201 as @e[tag=Candidate_201,tag=!InactiveCandidate_201] unless score @s SortValue_201 matches 0 at @s positioned ~ ~35.5 ~ run kill @e[limit=1,tag=Display,distance=..0.25]
            #execute if score $StoneQuantity ReversiData_201 >= #AI-LastAlgorithm ReversiData_201 unless score #RemainingDepth ReversiData_201 = #LastDepth ReversiData_201 as @e[tag=Candidate_201,tag=!InactiveCandidate_201] unless score @s SortValue_201 matches 0 at @s positioned ~ ~35.5 ~ run kill @e[limit=1,tag=Display,distance=..0.25]
        execute as @e[tag=Candidate_201,tag=!InactiveCandidate_201] unless score @s SortValue_201 matches 0 run kill @s
    #最良評価値を上に渡す
        #if ((StoneQuantity >= AI-LastAlgorithm && RemainingDepth != LastDepth) || (StoneQuantity < AI-LastAlgorithm && RemainingDepth != AI-Lv))
        execute if score $StoneQuantity ReversiData_201 < #AI-LastAlgorithm ReversiData_201 unless score #RemainingDepth ReversiData_201 = $AI-Lv ReversiData_201 run execute if score #MoreDepthTurnColor ReversiData_201 = $vsAI ReversiData_201 run scoreboard players operation @e[limit=1,tag=Candidate_201,tag=TestPoint_201,tag=!InactiveTestPoint_201] Evaluation_201 += @e[limit=1,tag=Candidate_201,tag=!InactiveCandidate_201] Evaluation_201
        execute if score $StoneQuantity ReversiData_201 < #AI-LastAlgorithm ReversiData_201 unless score #RemainingDepth ReversiData_201 = $AI-Lv ReversiData_201 run execute unless score #MoreDepthTurnColor ReversiData_201 = $vsAI ReversiData_201 run scoreboard players operation @e[limit=1,tag=Candidate_201,tag=TestPoint_201,tag=!InactiveTestPoint_201] Evaluation_201 -= @e[limit=1,tag=Candidate_201,tag=!InactiveCandidate_201] Evaluation_201
        execute if score $StoneQuantity ReversiData_201 >= #AI-LastAlgorithm ReversiData_201 unless score #RemainingDepth ReversiData_201 = #LastDepth ReversiData_201 run scoreboard players operation @e[limit=1,tag=Candidate_201,tag=TestPoint_201,tag=!InactiveTestPoint_201] Evaluation_201 = @e[limit=1,tag=Candidate_201,tag=!InactiveCandidate_201] Evaluation_201
            ##DEBUG ホログラムkill+summon
            #execute at @e[limit=1,tag=Candidate_201,tag=TestPoint_201,tag=!InactiveTestPoint_201] positioned ~ ~35.5 ~ run kill @e[limit=1,tag=Display,distance=..0.25]
            #execute as @e[limit=1,tag=Candidate_201,tag=TestPoint_201,tag=!InactiveTestPoint_201] at @s run function reversi_201:turn/common/debug_display
    #掘ったタグ
        tag @e[limit=1,tag=TestPoint_201,tag=!AlreadyTestPoint_201,tag=!InactiveTestPoint_201] add AlreadyTestPoint_201
    #石の配置
        #if ((StoneQuantity >= AI-LastAlgorithm && RemainingDepth == LastDepth) || (StoneQuantity < AI-LastAlgorithm && RemainingDepth == AI-Lv))
        execute if score $StoneQuantity ReversiData_201 < #AI-LastAlgorithm ReversiData_201 if score #RemainingDepth ReversiData_201 = $AI-Lv ReversiData_201 run schedule function reversi_201:turn/select_non_player 20t
        execute if score $StoneQuantity ReversiData_201 >= #AI-LastAlgorithm ReversiData_201 if score #RemainingDepth ReversiData_201 = #LastDepth ReversiData_201 run schedule function reversi_201:turn/select_non_player 20t
    #さよなら～
        #if ((StoneQuantity >= AI-LastAlgorithm && RemainingDepth != LastDepth) || (StoneQuantity < AI-LastAlgorithm && RemainingDepth != AI-Lv))
            ##DEBUG ホログラムkill
            #execute if score $StoneQuantity ReversiData_201 < #AI-LastAlgorithm ReversiData_201 unless score #RemainingDepth ReversiData_201 = $AI-Lv ReversiData_201 at @e[limit=1,tag=Candidate_201,tag=!InactiveCandidate_201] positioned ~ ~35.5 ~ run kill @e[limit=1,tag=Display,distance=..0.25]
            #execute if score $StoneQuantity ReversiData_201 >= #AI-LastAlgorithm ReversiData_201 unless score #RemainingDepth ReversiData_201 = #LastDepth ReversiData_201 at @e[limit=1,tag=Candidate_201,tag=!InactiveCandidate_201] positioned ~ ~35.5 ~ run kill @e[limit=1,tag=Display,distance=..0.25]
        execute if score $StoneQuantity ReversiData_201 < #AI-LastAlgorithm ReversiData_201 unless score #RemainingDepth ReversiData_201 = $AI-Lv ReversiData_201 run kill @e[limit=1,tag=Candidate_201,tag=!InactiveCandidate_201]
        execute if score $StoneQuantity ReversiData_201 >= #AI-LastAlgorithm ReversiData_201 unless score #RemainingDepth ReversiData_201 = #LastDepth ReversiData_201 run kill @e[limit=1,tag=Candidate_201,tag=!InactiveCandidate_201]
    #一つ上の盤面にまだ掘ってない候補があったら掘る 無ければ一つ上のInactiveと2つ上のInactiveTestPointを外してさらにここを実行する
        #if ((StoneQuantity >= AI-LastAlgorithm && RemainingDepth != LastDepth) || (StoneQuantity < AI-LastAlgorithm && RemainingDepth != AI-Lv))
        execute if score $StoneQuantity ReversiData_201 < #AI-LastAlgorithm ReversiData_201 unless score #RemainingDepth ReversiData_201 = $AI-Lv ReversiData_201 at @e[tag=TestPoint_201,tag=!InactiveTestPoint_201] positioned 2064 ~ 16 if entity @e[tag=Candidate_201,tag=InactiveCandidate_201,tag=!AlreadyTestPoint_201,dx=15,dy=0,dz=15] run function reversi_201:turn/ai/advanced/deep.another_point
        execute if score $StoneQuantity ReversiData_201 < #AI-LastAlgorithm ReversiData_201 unless score #RemainingDepth ReversiData_201 = $AI-Lv ReversiData_201 at @e[tag=TestPoint_201,tag=!InactiveTestPoint_201] positioned 2064 ~ 16 unless entity @e[tag=Candidate_201,tag=InactiveCandidate_201,tag=!AlreadyTestPoint_201,dx=15,dy=0,dz=15] run function reversi_201:turn/ai/advanced/deep.further_back
        execute if score $StoneQuantity ReversiData_201 >= #AI-LastAlgorithm ReversiData_201 unless score #RemainingDepth ReversiData_201 = #LastDepth ReversiData_201 at @e[tag=TestPoint_201,tag=!InactiveTestPoint_201] positioned 2064 ~ 16 if entity @e[tag=Candidate_201,tag=InactiveCandidate_201,tag=!AlreadyTestPoint_201,dx=15,dy=0,dz=15] run function reversi_201:turn/ai/advanced/deep.another_point
        execute if score $StoneQuantity ReversiData_201 >= #AI-LastAlgorithm ReversiData_201 unless score #RemainingDepth ReversiData_201 = #LastDepth ReversiData_201 at @e[tag=TestPoint_201,tag=!InactiveTestPoint_201] positioned 2064 ~ 16 unless entity @e[tag=Candidate_201,tag=InactiveCandidate_201,tag=!AlreadyTestPoint_201,dx=15,dy=0,dz=15] run function reversi_201:turn/ai/advanced/deep.further_back