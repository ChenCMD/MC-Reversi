scoreboard players operation @a[tag=Player_Black_201,scores={playing_000=201}] add_coin_000 = #StoneBlack ReversiData_201
scoreboard players operation @a[tag=Player_Black_201,scores={playing_000=201}] add_coin_000 += #StoneBlack ReversiData_201
scoreboard players operation @a[tag=Player_Black_201,scores={playing_000=201}] add_coin_000 += #40 num_000
execute if data storage reversi_201:data {win:"black"} run scoreboard players operation @a[tag=Player_Black_201,scores={playing_000=201}] add_coin_000 += #40 num_000
scoreboard players operation @a[tag=Player_Black_201,scores={playing_000=201}] add_coin_000 *= #PlayTime ReversiData_201
scoreboard players operation @a[tag=Player_Black_201,scores={playing_000=201}] add_coin_000 /= #100 num_000
execute if data storage reversi_201:data {TLE:true} run scoreboard players operation @a[tag=Player_Black_201,scores={playing_000=201}] add_coin_000 /= #3 num_000

scoreboard players operation @a[tag=Player_White_201,scores={playing_000=201}] add_coin_000 = #StoneWhite ReversiData_201
scoreboard players operation @a[tag=Player_White_201,scores={playing_000=201}] add_coin_000 += #StoneWhite ReversiData_201
scoreboard players operation @a[tag=Player_White_201,scores={playing_000=201}] add_coin_000 += #40 num_000
execute if data storage reversi_201:data {win:"white"} run scoreboard players operation @a[tag=Player_White_201,scores={playing_000=201}] add_coin_000 += #40 num_000
scoreboard players operation @a[tag=Player_White_201,scores={playing_000=201}] add_coin_000 *= #PlayTime ReversiData_201
scoreboard players operation @a[tag=Player_White_201,scores={playing_000=201}] add_coin_000 /= #100 num_000
execute if data storage reversi_201:data {TLE:true} run scoreboard players operation @a[tag=Player_White_201,scores={playing_000=201}] add_coin_000 /= #3 num_000