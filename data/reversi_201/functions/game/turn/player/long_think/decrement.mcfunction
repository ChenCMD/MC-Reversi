schedule function reversi_201:game/turn/player/long_think/decrement 1s

execute if score #TurnColor ReversiData_201 matches 0 if score #Think.Flag.Black ReversiData_201 matches 1 if score #Think.Black ReversiData_201 matches 2..6 run playsound ui.button.click player @a[scores={playing_000=201}] 2969.0 40.5 21.0 0.5 0.6 1
execute if score #TurnColor ReversiData_201 matches 1 if score #Think.Flag.White ReversiData_201 matches 1 if score #Think.White ReversiData_201 matches 2..6 run playsound ui.button.click player @a[scores={playing_000=201}] 2969.0 40.5 21.0 0.5 0.6 1

execute if score #TurnColor ReversiData_201 matches 0 store result bossbar reversi_201:player1_201 value run scoreboard players remove #Think.Black ReversiData_201 1
execute if score #TurnColor ReversiData_201 matches 1 store result bossbar reversi_201:player2_201 value run scoreboard players remove #Think.White ReversiData_201 1

execute if score #TurnColor ReversiData_201 matches 0 if score #Think.Black ReversiData_201 matches ..0 if score #Think.Flag.Black ReversiData_201 matches 1 run function reversi_201:game/turn/player/long_think/timeover.second
execute if score #TurnColor ReversiData_201 matches 1 if score #Think.White ReversiData_201 matches ..0 if score #Think.Flag.White ReversiData_201 matches 1 run function reversi_201:game/turn/player/long_think/timeover.second

execute if score #TurnColor ReversiData_201 matches 0 if score #Think.Black ReversiData_201 matches ..0 if score #Think.Flag.Black ReversiData_201 matches 0 run function reversi_201:game/turn/player/long_think/timeover.first
execute if score #TurnColor ReversiData_201 matches 1 if score #Think.White ReversiData_201 matches ..0 if score #Think.Flag.White ReversiData_201 matches 0 run function reversi_201:game/turn/player/long_think/timeover.first