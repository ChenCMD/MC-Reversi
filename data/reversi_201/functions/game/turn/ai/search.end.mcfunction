kill @s
#置けるマスがない時の処理
    execute unless entity @e[tag=Candidate_201] run function reversi_201:game/turn/common/cant_place
#CursorEntityがある = 置けるマスがある ときの処理
    execute if entity @e[tag=Candidate_201] run scoreboard players set #SkipFlag ReversiData_201 0
    execute if entity @e[tag=Candidate_201] run function reversi_201:game/turn/ai/advanced/lv_branch
#後処理
    scoreboard players set #TickThroughputC ReversiData_201 -1