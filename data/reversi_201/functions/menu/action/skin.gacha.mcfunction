#> reversi_201:menu/action/skin.gacha
#
#
#
# @within function reversi_201:menu/select

scoreboard players add @s remove_coin_000 5000
function player_000:remove_coin
execute if entity @s[tag=!failed_remove_000] run function reversi_201:other/gacha