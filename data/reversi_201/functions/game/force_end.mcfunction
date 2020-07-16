schedule clear reversi_201:game/turn/player/long_think/decrement
tellraw @a [{"text":"ゲームを強制終了します...","color":"red"}]
bossbar set reversi_201:player1_201 players
bossbar set reversi_201:player2_201 players
tp @e[tag=CursorEntity_201] ~ ~-200 ~
kill @e[tag=CursorEntity_201]
kill @e[tag=SelectItem_201]
function reversi_201:menu/action/common.main