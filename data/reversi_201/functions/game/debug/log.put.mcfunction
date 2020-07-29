#  #StoneQuantity,
#  #logScore,
#  #TickThroughputC,
#  #RemainingDepth,
#  #MoreDepthTurnColor,
#  #log.active/still,
#  #log.active/already,
#  #log.inactive/still,
#  #log.inactive/already
data modify storage reversi_201:logs output append value {}
execute store result storage reversi_201:logs output[-1].StoneQuantity int 1 run scoreboard players get #StoneQuantity ReversiData_201
execute store result storage reversi_201:logs output[-1].logScore int 1 run scoreboard players get #logScore ReversiData_201
data modify storage reversi_201:logs output[-1].functionName set from storage reversi_201:logs tmp
execute store result storage reversi_201:logs output[-1].TickThroughputC int 1 run scoreboard players get #TickThroughputC ReversiData_201
execute store result storage reversi_201:logs output[-1].RemainingDepth int 1 run scoreboard players get #RemainingDepth ReversiData_201
execute store result storage reversi_201:logs output[-1].MoreDepthTurnColor int 1 run scoreboard players get #MoreDepthTurnColor ReversiData_201
execute store result storage reversi_201:logs output[-1].active_still int 1 if entity @e[tag=Candidate_201,tag=!InactiveCandidate_201,tag=!AlreadyTestPoint_201]
execute store result storage reversi_201:logs output[-1].active_already int 1 if entity @e[tag=Candidate_201,tag=AlreadyTestPoint_201,tag=!InactiveCandidate_201]
execute store result storage reversi_201:logs output[-1].inactive_already int 1 if entity @e[tag=Candidate_201,tag=InactiveCandidate_201,tag=!AlreadyTestPoint_201]
execute store result storage reversi_201:logs output[-1].inactive_still int 1 if entity @e[tag=Candidate_201,tag=InactiveCandidate_201,tag=AlreadyTestPoint_201]

scoreboard players add #logScore ReversiData_201 1