    # #DEBUG log
    # data merge storage reversi_201:logs {tmp:"reversi_201:game/turn/ai/advanced/deep.end"}
    # function reversi_201:game/debug/log.put
kill @s
scoreboard players set $LastBoardPredict Evaluation_201 0
scoreboard players remove #RemainingDepth ReversiData_201 1
#置けるマスがない時の処理 最悪値を持つダミー召喚してbackの実行
    execute unless entity @e[type=area_effect_cloud,tag=Candidate_201,tag=!InactiveCandidate_201,distance=..50,x=-19995.0,y=11.0,z=21.0] at @s run summon minecraft:area_effect_cloud -19999 ~ 18 {Rotation:[0f,90f],Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:[Candidate_201,DummyCandidate_201]}
    execute if entity @e[type=area_effect_cloud,tag=DummyCandidate_201,distance=..50,x=-19995.0,y=11.0,z=21.0] run scoreboard players set @e[type=area_effect_cloud,tag=DummyCandidate_201,distance=..50,x=-19995.0,y=11.0,z=21.0] Evaluation_201 48
    execute if entity @e[type=area_effect_cloud,tag=DummyCandidate_201,distance=..50,x=-19995.0,y=11.0,z=21.0] run scoreboard players operation #RemainingDepthC ReversiData_201 >< #RemainingDepth ReversiData_201
#CursorEntityがある = 置けるマスがある ときの処理
    scoreboard players reset $else ReversiData_201
    #一番最後まで読んだ後最良値を返しつつ一つ戻って他の候補の先の盤面を掘る処理
        execute if entity @e[type=area_effect_cloud,tag=Candidate_201,tag=!InactiveCandidate_201,distance=..50,x=-19995.0,y=11.0,z=21.0] if score #RemainingDepth ReversiData_201 matches ..0 run function reversi_201:game/turn/ai/advanced/deep.back
    #まだ掘る処理
        #5箇所まで絞る
            execute unless score $else ReversiData_201 matches 1 if entity @e[type=area_effect_cloud,tag=Candidate_201,tag=!InactiveCandidate_201,distance=..50,x=-19995.0,y=11.0,z=21.0] if score #RemainingDepth ReversiData_201 matches 1.. run function reversi_201:game/turn/common/sort.run
            execute unless score $else ReversiData_201 matches 1 if entity @e[type=area_effect_cloud,tag=Candidate_201,tag=!InactiveCandidate_201,distance=..50,x=-19995.0,y=11.0,z=21.0] if score #RemainingDepth ReversiData_201 matches 1.. if score #StoneQuantity ReversiData_201 < #AI-LastAlgorithm ReversiData_201 as @e[type=area_effect_cloud,tag=Candidate_201,distance=..50,x=-19995.0,y=11.0,z=21.0] unless score @s SortValue_201 matches 0..4 run kill @s
        #無効化
            execute unless score $else ReversiData_201 matches 1 if entity @e[type=area_effect_cloud,tag=Candidate_201,tag=!InactiveCandidate_201,distance=..50,x=-19995.0,y=11.0,z=21.0] if score #RemainingDepth ReversiData_201 matches 1.. run tag @e[type=area_effect_cloud,tag=TestPoint_201,tag=!InactiveTestPoint_201,distance=..50,x=-19995.0,y=11.0,z=21.0,limit=1] add InactiveTestPoint_201
        #更に掘る
            execute unless score $else ReversiData_201 matches 1 if entity @e[type=area_effect_cloud,tag=Candidate_201,tag=!InactiveCandidate_201,distance=..50,x=-19995.0,y=11.0,z=21.0] if score #RemainingDepth ReversiData_201 matches 1.. run function reversi_201:game/turn/ai/advanced/deep.init

#後処理
    scoreboard players set #TickThroughputC ReversiData_201 -1