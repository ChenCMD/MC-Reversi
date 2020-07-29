execute if score $vsAI ReversiData_201 matches -1 if entity @a[tag=Player_Black_201,scores={playing_000=201},limit=1] if entity @a[tag=Player_White_201,scores={playing_000=201},limit=1] run function reversi_201:game/start
execute if score $vsAI ReversiData_201 matches 0 if entity @a[tag=Player_White_201,scores={playing_000=201},limit=1] run function reversi_201:game/start_vs_ai
execute if score $vsAI ReversiData_201 matches 1 if entity @a[tag=Player_Black_201,scores={playing_000=201},limit=1] run function reversi_201:game/start_vs_ai
execute unless score $vsAI ReversiData_201 matches 0 unless entity @a[tag=Player_Black_201,scores={playing_000=201},limit=1] run tellraw @s [{"text":"[ERROR] ","color":"red"},{"text":"Player 1","color":"dark_gray"},{"text":"が必要です。","color":"white"}]
execute unless score $vsAI ReversiData_201 matches 1 unless entity @a[tag=Player_White_201,scores={playing_000=201},limit=1] run tellraw @s [{"text":"[ERROR] ","color":"red"},{"text":"Player 2","color":"white"},{"text":"が必要です。","color":"white"}]
# -1 : 0 1
#  0 : / 1
#  1 : 0 /