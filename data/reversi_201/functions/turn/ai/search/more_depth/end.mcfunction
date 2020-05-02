#置けるマスがない時の処理 最悪値を持つダミー召喚してbackの実行
    execute unless entity @e[tag=Candidate_201,tag=!InactiveCandidate_201] run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:[Candidate_201,DummyCandidate_201]}
    execute unless entity @e[tag=Candidate_201,tag=!InactiveCandidate_201] run scoreboard players set @e[tag=DummyCandidate_201] Evaluation_201 100
    execute unless entity @e[tag=Candidate_201,tag=!InactiveCandidate_201] run function reversi_201:turn/ai/search/more_depth/back
#CursorEntityがある = 置けるマスがある ときの処理
    #掘る深度のスコアを1減算
        execute if entity @e[tag=Candidate_201,tag=!InactiveCandidate_201] run scoreboard players remove #RemainingDepth ReversiData_201 1
    #一番最後まで読んだ後最良値を返しつつ一つ戻って他の候補の先の盤面を掘る処理
        execute if entity @e[tag=Candidate_201,tag=!InactiveCandidate_201] if score #RemainingDepth ReversiData_201 matches ..0 run function reversi_201:turn/ai/search/more_depth/back
    #まだ掘る処理
        #5箇所まで絞る
        execute if entity @e[tag=Candidate_201,tag=!InactiveCandidate_201] if score #RemainingDepth ReversiData_201 matches 1.. run function reversi_201:turn/ai/search/sort/run
            execute if entity @e[tag=Candidate_201,tag=!InactiveCandidate_201] if score #RemainingDepth ReversiData_201 matches 1.. as @e[tag=Candidate_201] unless score @s SortValue_201 matches 0..4 run kill @s
        #無効化
            execute if entity @e[tag=Candidate_201,tag=!InactiveCandidate_201] if score #RemainingDepth ReversiData_201 matches 1.. run tag @e[limit=1,tag=TestPoint_201,tag=!InactiveTestPoint_201] add InactiveTestPoint_201
        #更に掘る
            execute if entity @e[tag=Candidate_201,tag=!InactiveCandidate_201] if score #RemainingDepth ReversiData_201 matches 1.. as @e[tag=Checker_201] at @s run function reversi_201:turn/ai/search/more_depth/init