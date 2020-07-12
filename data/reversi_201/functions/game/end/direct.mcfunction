#0にセット
    scoreboard players set #StoneWhite ReversiData_201 0
    scoreboard players set #StoneBlack ReversiData_201 0
#メッセージ
    title @a[scores={playing_000=201}] times 0 100 20
    title @a[scores={playing_000=201}] title {"text":"GAME END!!","color":"yellow","bold":true}
    playsound block.end_portal.spawn block @a[scores={playing_000=201}] ~ ~ ~ 0.5 1 1
#羊の硬直
    execute if score $sheep ReversiData_201 matches 1 run function reversi_201:game/stone/sheep/respawn
#集計用えんちち
    execute at @e[tag=BoardPos_201] run summon armor_stand ~ 10 ~ {Tags:[AggregateEntity_201,Entity_201],Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Rotation:[-90.0f,0f]}
#集計スタート
    schedule function reversi_201:game/end/message 2s
    schedule function reversi_201:game/end/direct2 4s