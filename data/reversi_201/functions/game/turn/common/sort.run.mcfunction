#init all = 0
    scoreboard players set @e[tag=Candidate_201,tag=!InactiveCandidate_201] SortValue_201 0
#加算
    execute at @e[tag=Candidate_201,tag=!InactiveCandidate_201] as @e[tag=Candidate_201,tag=!InactiveCandidate_201] if score @s Evaluation_201 > @e[tag=Candidate_201,tag=!InactiveCandidate_201,sort=nearest,limit=1] Evaluation_201 run scoreboard players add @s SortValue_201 1
#値の衝突を無くす
    execute at @e[tag=Candidate_201,tag=!InactiveCandidate_201] as @e[tag=Candidate_201,tag=!InactiveCandidate_201,sort=random] run function reversi_201:game/turn/common/sort.duplicated_shift