scoreboard players add $Current SessionID.W_201 1
scoreboard players operation @s SessionID.W_201 = $Current SessionID.W_201
tag @a[scores={playing_000=201}] remove Player_White_201
tag @s remove Player_Black_201
tag @s add Player_White_201
function reversi_201:menu/action/main._overlay