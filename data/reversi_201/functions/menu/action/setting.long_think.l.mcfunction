execute if score $Think.MAX ReversiData_201 matches 450 run scoreboard players set $Think.MAX ReversiData_201 451
execute if score $Think.MAX ReversiData_201 matches 300 run scoreboard players set $Think.MAX ReversiData_201 450
execute if score $Think.MAX ReversiData_201 matches 150 run scoreboard players set $Think.MAX ReversiData_201 300
execute if score $Think.MAX ReversiData_201 matches -01 run scoreboard players set $Think.MAX ReversiData_201 150
execute if score $Think.MAX ReversiData_201 matches 451 run scoreboard players set $Think.MAX ReversiData_201 -1
function reversi_201:menu/action/setting._overlay