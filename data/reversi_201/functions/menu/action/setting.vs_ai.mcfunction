execute if score $vsAI ReversiData_201 matches 1 run scoreboard players set $vsAI ReversiData_201 2
execute if score $vsAI ReversiData_201 matches 0 run scoreboard players set $vsAI ReversiData_201 1
execute if score $vsAI ReversiData_201 matches -1 run scoreboard players set $vsAI ReversiData_201 0
execute if score $vsAI ReversiData_201 matches 2 run scoreboard players set $vsAI ReversiData_201 -1
function reversi_201:menu/action/setting._overlay