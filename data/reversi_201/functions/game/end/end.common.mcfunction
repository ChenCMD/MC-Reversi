#ボスバー消す
    bossbar set reversi_201:player1_201 players
    bossbar set reversi_201:player2_201 players
#プレイフラグ消す
    scoreboard players set $isPlay ReversiData_201 0
#強制終了のやつ消す
    kill @e[tag=hologram_001,scores={hologram_id_001=2098},distance=..200,x=2069.0,y=40.0,z=21.0]
#遅延処理
    execute if data storage reversi_201:data {time:"short"} run schedule function reversi_201:game/end/end.common2 10t
    execute if data storage reversi_201:data {time:"long"} run schedule function reversi_201:game/end/end.common2 100t