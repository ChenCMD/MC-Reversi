#0にセット
    scoreboard players set #StoneWhite ReversiData_201 0
    scoreboard players set #StoneBlack ReversiData_201 0
#メッセージ
    title @a[scores={playing_000=201}] times 0 100 20
    title @a[scores={playing_000=201}] subtitle {"text":""}
    title @a[scores={playing_000=201}] title {"text":"GAME END!!","color":"yellow","bold":true}
    playsound block.end_portal.spawn block @a[scores={playing_000=201}] 2969.0 40.5 21.0 0.5 1 1
#羊の硬直
    execute if score $sheep ReversiData_201 matches 1 run function reversi_201:game/stone/sheep/respawn
#集計用えんちち
    tp 0-0-c9-0-0 -19999 10 17 -90.0 0
#集計スタート
    schedule function reversi_201:game/end/message 2s
    schedule function reversi_201:game/end/direct2 4s