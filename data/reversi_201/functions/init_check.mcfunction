#> reversi_201:init_check
# @within tag/function
#   minecraft:load

#> VSCode Extension : Data-pack Helper Plus declare
# @internal
    scoreboard objectives add ReversiData_201 dummy {"text":"リバーシのあれこれ保存用"}

execute unless score #init ReversiData_201 = #init ReversiData_201 run function reversi_201:init
scoreboard players set #init ReversiData_201 1