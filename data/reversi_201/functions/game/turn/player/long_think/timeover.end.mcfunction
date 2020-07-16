title @a[scores={playing_000=201}] times 0 100 20
execute if score #TurnColor ReversiData_201 matches 0 run title @a[scores={playing_000=201}] subtitle [{"text":"白の勝利です","color":"green"}]
execute if score #TurnColor ReversiData_201 matches 1 run title @a[scores={playing_000=201}] subtitle [{"text":"黒の勝利です","color":"green"}]
execute if score #TurnColor ReversiData_201 matches 1 run title @a[tag=Player_White_201,scores={playing_000=201}] title {"text":"YOU WIN","color":"yellow","bold":true}
execute if score #TurnColor ReversiData_201 matches 0 run title @a[tag=Player_Black_201,scores={playing_000=201}] title {"text":"YOU LOSE","color":"dark_aqua","bold":true}
execute if score #TurnColor ReversiData_201 matches 1 run title @a[tag=Player_Black_201,scores={playing_000=201}] title {"text":"YOU WIN","color":"yellow","bold":true}
execute if score #TurnColor ReversiData_201 matches 0 run title @a[tag=Player_White_201,scores={playing_000=201}] title {"text":"YOU LOSE","color":"dark_aqua","bold":true}
playsound ui.toast.challenge_complete player @a[scores={playing_000=201}] 2969.0 40.5 21.0 0.5 1 1
#隔離終了
    fill 2056 43 23 2056 40 18 air
    fill 2081 40 23 2081 43 18 air
bossbar set reversi_201:player1_201 players
bossbar set reversi_201:player2_201 players
function reversi_201:menu/action/common.main