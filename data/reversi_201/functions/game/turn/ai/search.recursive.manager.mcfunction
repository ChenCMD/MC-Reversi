#tick処理量のコピー
    scoreboard players operation #TickThroughputC ReversiData_201 = $TickThroughput ReversiData_201
#Checkerに実行者と座標を渡してtick処理量だけ再帰回す
execute as @e[tag=Checker_201] at @s run function reversi_201:game/turn/ai/search.recursive.run