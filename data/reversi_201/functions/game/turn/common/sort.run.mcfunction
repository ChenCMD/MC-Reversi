scoreboard players remove #TickThroughputC ReversiData_201 4
#init all = 0
    scoreboard players set @e[type=area_effect_cloud,tag=Candidate_201,tag=!InactiveCandidate_201,distance=..50,x=-19995.0,y=11.0,z=21.0] SortValue_201 0
#加算
    execute at @e[type=area_effect_cloud,tag=Candidate_201,tag=!InactiveCandidate_201,distance=..50,x=-19995.0,y=11.0,z=21.0] as @e[type=area_effect_cloud,tag=Candidate_201,tag=!InactiveCandidate_201,distance=..50,x=-19995.0,y=11.0,z=21.0] if score @s Evaluation_201 > @e[type=area_effect_cloud,tag=Candidate_201,tag=!InactiveCandidate_201,distance=..50,x=-19995.0,y=11.0,z=21.0,sort=nearest,limit=1] Evaluation_201 run scoreboard players add @s SortValue_201 1
#値の衝突を無くす
    execute at @e[type=area_effect_cloud,tag=Candidate_201,tag=!InactiveCandidate_201,distance=..50,x=-19995.0,y=11.0,z=21.0] as @e[type=area_effect_cloud,tag=Candidate_201,tag=!InactiveCandidate_201,distance=..50,x=-19995.0,y=11.0,z=21.0,sort=random] run function reversi_201:game/turn/common/sort.duplicated_shift