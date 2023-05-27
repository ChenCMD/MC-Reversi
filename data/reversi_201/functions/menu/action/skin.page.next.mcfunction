#> reversi_201:menu/action/skin.page.next
#
#
#
# @within function reversi_201:menu/select

scoreboard players add $SkinMenuPage ReversiData_201 1
execute if score $SkinMenuPage ReversiData_201 matches 5.. at @s run playsound ui.button.click master @s ~ ~ ~ 1 1.1
execute if score $SkinMenuPage ReversiData_201 matches 5.. at @s run scoreboard players set $SkinMenuPage ReversiData_201 4
scoreboard players operation $SkinMenuPage ReversiData_201 *= #-1 num_000
function reversi_201:menu/action/skin.open