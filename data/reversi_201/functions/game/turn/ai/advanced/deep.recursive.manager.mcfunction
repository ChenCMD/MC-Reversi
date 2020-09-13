#tick処理量のコピー
    scoreboard players operation #TickThroughputC ReversiData_201 = $TickThroughput ReversiData_201
#Checkerに実行者と座標を渡してtick処理量だけ再帰回す
    execute as 0-0-c9-0-0 at @s run function reversi_201:game/turn/ai/advanced/deep.recursive.run