scoreboard players remove #TickThroughputC ReversiData_201 12
#AILvのコピーと1減算
    scoreboard players operation #RemainingDepth ReversiData_201 = $AI-Lv ReversiData_201
    execute if score #StoneQuantity ReversiData_201 >= #AI-LastAlgorithm ReversiData_201 run scoreboard players operation #RemainingDepth ReversiData_201 = #LastDepth ReversiData_201
        # #DEBUG log
        # data merge storage reversi_201:logs {tmp:"reversi_201:game/turn/ai/advanced/lv_branch"}
        # function reversi_201:game/debug/log.put
    scoreboard players remove #RemainingDepth ReversiData_201 1
#候補の評価ソート
    function reversi_201:game/turn/common/sort.run
#置ける場所が最初から一か所しかない場合処理の簡略化
    execute unless entity @e[type=area_effect_cloud,tag=Candidate_201,scores={SortValue_201=1..},distance=..50,x=-19995.0,y=11.0,z=21.0,limit=1] run scoreboard players set #RemainingDepth ReversiData_201 0
#Lv1 処理
    execute if score #RemainingDepth ReversiData_201 matches ..0 as @e[type=area_effect_cloud,tag=Candidate_201,distance=..50,x=-19995.0,y=11.0,z=21.0] unless score @s SortValue_201 matches 0..0 run kill @s
    execute if score #RemainingDepth ReversiData_201 matches ..0 run schedule function reversi_201:game/turn/select_non_player 20t
#Lv2+処理
    execute if score #RemainingDepth ReversiData_201 matches 1.. run scoreboard players operation #MoreDepthTurnColor ReversiData_201 = #TurnColor ReversiData_201
    execute if score #RemainingDepth ReversiData_201 matches 1.. if score #StoneQuantity ReversiData_201 < #AI-LastAlgorithm ReversiData_201 as @e[type=area_effect_cloud,tag=Candidate_201,distance=..50,x=-19995.0,y=11.0,z=21.0] unless score @s SortValue_201 matches 0..4 run kill @s
    execute if score #TickThroughputC ReversiData_201 matches ..0 if score #RemainingDepth ReversiData_201 matches 1.. run schedule function reversi_201:game/turn/ai.mirror/advanced/deep.init 1t
    execute if score #TickThroughputC ReversiData_201 matches 1.. if score #RemainingDepth ReversiData_201 matches 1.. run function reversi_201:game/turn/ai/advanced/deep.init