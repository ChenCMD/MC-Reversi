scoreboard players add $Current SessionID.1_201 1
scoreboard players operation @s SessionID.1_201 = $Current SessionID.1_201
tag @a[scores={playing_000=201}] remove Player_White_201
tag @s remove Player_Black_201
tag @s add Player_White_201
function reversi_201:menu/action/main._overlay