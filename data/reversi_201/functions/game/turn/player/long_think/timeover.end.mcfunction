#title関連
    title @a[scores={playing_000=201}] times 0 100 20
    execute if score #TurnColor ReversiData_201 matches 0 run title @a[scores={playing_000=201}] subtitle [{"text":"白の勝利です","color":"green"}]
    execute if score #TurnColor ReversiData_201 matches 1 run title @a[scores={playing_000=201}] subtitle [{"text":"黒の勝利です","color":"green"}]
    execute if score #TurnColor ReversiData_201 matches 1 run title @a[tag=Player_White_201,scores={playing_000=201}] title {"text":"YOU WIN","color":"yellow","bold":true}
    execute if score #TurnColor ReversiData_201 matches 0 run title @a[tag=Player_Black_201,scores={playing_000=201}] title {"text":"YOU LOSE","color":"dark_aqua","bold":true}
    execute if score #TurnColor ReversiData_201 matches 1 run title @a[tag=Player_Black_201,scores={playing_000=201}] title {"text":"YOU WIN","color":"yellow","bold":true}
    execute if score #TurnColor ReversiData_201 matches 0 run title @a[tag=Player_White_201,scores={playing_000=201}] title {"text":"YOU LOSE","color":"dark_aqua","bold":true}
#サウンド
    playsound ui.toast.challenge_complete player @a[scores={playing_000=201}] 2969.0 40.5 21.0 0.5 1 1
#コイン加算
    execute if score #TurnColor ReversiData_201 matches 0 run data merge storage reversi_201:data {win:"white",TLE:true}
    execute if score #TurnColor ReversiData_201 matches 1 run data merge storage reversi_201:data {win:"black",TLE:true}
    function reversi_201:game/end/add_coin
function reversi_201:game/end/end.common