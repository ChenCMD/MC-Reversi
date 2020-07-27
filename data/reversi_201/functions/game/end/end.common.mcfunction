#隔離終了
    fill 2056 43 23 2056 40 18 air
    fill 2081 40 23 2081 43 18 air
#ボスバー消す
    bossbar set reversi_201:player1_201 players
    bossbar set reversi_201:player2_201 players
#プレイフラグ消す
    scoreboard players set $isPlay ReversiData_201 0
#メニュー復活
    function reversi_201:menu/action/common.main