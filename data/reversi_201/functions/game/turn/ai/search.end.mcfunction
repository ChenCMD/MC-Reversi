scoreboard players remove #TickThroughputC ReversiData_201 5
#置けるマスがない時の処理
    execute unless entity @e[type=area_effect_cloud,tag=Candidate_201,distance=..50,x=-19995.0,y=11.0,z=21.0] run function reversi_201:game/turn/common/cant_place
#CursorEntityがある = 置けるマスがある ときの処理
    execute if entity @e[type=area_effect_cloud,tag=Candidate_201,distance=..50,x=-19995.0,y=11.0,z=21.0] run scoreboard players set #SkipFlag ReversiData_201 0
    execute if entity @e[type=area_effect_cloud,tag=Candidate_201,distance=..50,x=-19995.0,y=11.0,z=21.0] run function reversi_201:game/turn/ai/advanced/lv_branch
#後処理
    scoreboard players set #else ReversiData_201 1