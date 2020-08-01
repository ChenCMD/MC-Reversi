#tick処理量のコピー
    scoreboard players operation #TickThroughputC ReversiData_201 = $TickThroughput ReversiData_201
#Checkerに実行者と座標を渡してtick処理量だけ再帰回す
    execute as @e[type=armor_stand,tag=Checker_201,tag=!InactiveChecker_201,distance=..50,x=-19995.0,y=11.0,z=21.0] at @s run function reversi_201:game/turn/ai/advanced/deep.recursive.run