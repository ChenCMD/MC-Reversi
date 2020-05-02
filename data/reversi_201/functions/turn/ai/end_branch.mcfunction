#AILvのコピーと1減算
    scoreboard players operation #RemainingDepth ReversiData_201 = $AI-Lv ReversiData_201
    scoreboard players remove #RemainingDepth ReversiData_201 1
#候補の評価ソート
    function reversi_201:turn/ai/search/sort/run
#Lv1の時は1箇所に絞ってそのまま石置く
    execute if score #RemainingDepth ReversiData_201 matches ..0 run kill @e[limit=1,tag=Checker_201,tag=!InactiveChecker_201]
    execute if score #RemainingDepth ReversiData_201 matches ..0 as @e[tag=Candidate_201] unless score @s SortValue_201 matches 0..0 run kill @s
    execute if score #RemainingDepth ReversiData_201 matches ..0 run schedule function reversi_201:turn/select_non_player 1t
#Lv2+処理
        execute if score #RemainingDepth ReversiData_201 matches 1.. run scoreboard players operation #MoreDepthTurnColor ReversiData_201 = $TurnColor ReversiData_201
    #5箇所に絞る
        execute if score #RemainingDepth ReversiData_201 matches 1.. as @e[tag=Candidate_201] unless score @s SortValue_201 matches 0..4 run kill @s
    #盤面の複製と新しいCheckerの召喚
        execute if score #RemainingDepth ReversiData_201 matches 1.. as @e[tag=Checker_201] at @s run function reversi_201:turn/ai/search/more_depth/init