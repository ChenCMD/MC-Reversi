    # #DEBUG log
    # data merge storage reversi_201:logs {tmp:"reversi_201:game/turn/ai/advanced/deep.further_back"}
    # function reversi_201:game/debug/log.put
tag @e[type=area_effect_cloud,tag=Candidate_201,tag=InactiveTestPoint_201,tag=TestPoint_201,dx=15,dy=1,dz=15] remove InactiveTestPoint_201
tag @e[type=area_effect_cloud,tag=Candidate_201,tag=InactiveCandidate_201,dx=15,dy=0,dz=15] remove InactiveCandidate_201
scoreboard players add #MoreDepthTurnColor ReversiData_201 1
scoreboard players operation #MoreDepthTurnColor ReversiData_201 %= #2 num_000
function reversi_201:game/turn/ai/advanced/deep.back