scoreboard players add $Current SessionID.0_201 1
scoreboard players operation @s SessionID.0_201 = $Current SessionID.0_201
tag @a[scores={playing_000=201}] remove Player_Black_201
tag @s remove Player_White_201
tag @s add Player_Black_201
function reversi_201:menu/action/main._overlay