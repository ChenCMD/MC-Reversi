execute if score $Think.COUNT ReversiData_201 matches 30 run scoreboard players set $Think.COUNT ReversiData_201 31
execute if score $Think.COUNT ReversiData_201 matches 20 run scoreboard players set $Think.COUNT ReversiData_201 30
execute if score $Think.COUNT ReversiData_201 matches 10 run scoreboard players set $Think.COUNT ReversiData_201 20
execute if score $Think.COUNT ReversiData_201 matches -1 run scoreboard players set $Think.COUNT ReversiData_201 10
execute if score $Think.COUNT ReversiData_201 matches 31 run scoreboard players set $Think.COUNT ReversiData_201 -1
function reversi_201:menu/action/setting._overlay