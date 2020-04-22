scoreboard players operation #TickThroughputC ReversiData_201 = $TickThroughput ReversiData_201
execute unless score #vsAI ReversiData_201 = #TurnColor ReversiData_201 run function reversi_201:turn/check2
execute if score #vsAI ReversiData_201 = #TurnColor ReversiData_201 run function reversi_201:turn/ai/start