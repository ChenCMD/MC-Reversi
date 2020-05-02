#title関連
    title @a times 0 100 20
    execute if score $StoneBlack ReversiData_201 = $StoneWhite ReversiData_201 run title @a subtitle [{"text":"引き分けです。","color":"dark_aqua"}]
    execute if score $StoneBlack ReversiData_201 > $StoneWhite ReversiData_201 run title @a subtitle [{"text":"黒の勝利です","color":"green"}]
    execute if score $StoneBlack ReversiData_201 < $StoneWhite ReversiData_201 run title @a subtitle [{"text":"白の勝利です","color":"green"}]
    execute if score $StoneBlack ReversiData_201 < $StoneWhite ReversiData_201 run title @a[tag=Player_White_201] title {"text":"YOU WIN","color":"yellow","bold":true}
    execute if score $StoneBlack ReversiData_201 < $StoneWhite ReversiData_201 run title @a[tag=Player_Black_201] title {"text":"YOU LOSE","color":"dark_aqua","bold":true}
    execute if score $StoneBlack ReversiData_201 > $StoneWhite ReversiData_201 run title @a[tag=Player_Black_201] title {"text":"YOU WIN","color":"yellow","bold":true}
    execute if score $StoneBlack ReversiData_201 > $StoneWhite ReversiData_201 run title @a[tag=Player_White_201] title {"text":"YOU LOSE","color":"dark_aqua","bold":true}
    execute if score $StoneBlack ReversiData_201 = $StoneWhite ReversiData_201 run title @a title {"text":"DRAW","color":"yellow","bold":true}
    tellraw @a [{"text":"試合結果: ","color":"gold"},{"score":{"objective":"ReversiData_201","name":"$StoneWhite"},"color":"white","bold":true},{"text":" : ","color":"gold","bold":false},{"score":{"objective":"ReversiData_201","name":"$StoneBlack"},"color":"dark_gray","bold":true}]
#サウンド
    execute if score $StoneBlack ReversiData_201 = $StoneWhite ReversiData_201 run playsound entity.villager.trade ambient @a ~ ~ ~ 1 1 1
    execute unless score $StoneBlack ReversiData_201 = $StoneWhite ReversiData_201 run playsound ui.toast.challenge_complete player @a ~ ~ ~ 1 1 1
#ゴミ処理
kill @e[tag=AggregateEntity_201]