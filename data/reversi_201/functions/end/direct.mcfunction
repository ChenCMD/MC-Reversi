#0にセット
    scoreboard players set $StoneWhite ReversiData_201 0
    scoreboard players set $StoneBlack ReversiData_201 0
#メッセージ
    title @a times 0 100 20
    title @a title {"text":"GAME END!!","color":"yellow","bold":true}
    playsound block.end_portal.spawn block @a ~ ~ ~ 1.1 1 1
#集計用えんちち
    execute at @e[tag=BoardPos_201] run summon armor_stand ~ ~ ~ {Tags:["AggregateEntity_201","Entity_201"],Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Rotation:[-90f]}
#集計スタート
    schedule function reversi_201:end/message 5s
    schedule function reversi_201:end/direct2 7s