say 最後のアルゴリズム使ってるよ！
execute if entity @s[tag=isSuccess_201] run scoreboard players operation $Tmp Evaluation_201 = #LastBoardPredict ReversiData_201

execute if score $vsAI ReversiData_201 matches 0 if block ~ ~ ~ white_stained_glass run scoreboard players add @e[tag=Candidate_201,tag=InactiveCandidate_201] Evaluation_201 1
execute if score $vsAI ReversiData_201 matches 0 if block ~ ~ ~ black_stained_glass run scoreboard players remove @e[tag=Candidate_201,tag=InactiveCandidate_201] Evaluation_201 1
execute if score $vsAI ReversiData_201 matches 1 if block ~ ~ ~ black_stained_glass run scoreboard players add @e[tag=Candidate_201,tag=InactiveCandidate_201] Evaluation_201 1
execute if score $vsAI ReversiData_201 matches 1 if block ~ ~ ~ white_stained_glass run scoreboard players remove @e[tag=Candidate_201,tag=InactiveCandidate_201] Evaluation_201 1

execute if score $vsAI ReversiData_201 matches 0 if block ~ ~ ~ white_stained_glass run scoreboard players add #LastBoardPredict ReversiData_201 1
execute if score $vsAI ReversiData_201 matches 0 if block ~ ~ ~ black_stained_glass run scoreboard players remove #LastBoardPredict ReversiData_201 1
execute if score $vsAI ReversiData_201 matches 1 if block ~ ~ ~ black_stained_glass run scoreboard players add #LastBoardPredict ReversiData_201 1
execute if score $vsAI ReversiData_201 matches 1 if block ~ ~ ~ white_stained_glass run scoreboard players remove #LastBoardPredict ReversiData_201 1