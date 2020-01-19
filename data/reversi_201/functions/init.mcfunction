# 使い方
# $StoneFirstQuantity ReversiData_201 に盤面のサイズ(真ん中含む石の置ける数)をセット
# function reversi_201:board_set を初回のみ実行
# tag Player_White_201 / Player_Black_201を対戦プレイヤーに付与する
# function reversi_201:start を実行するとゲーム開始
team add NoCollision_201
team modify NoCollision_201 collisionRule never
team modify NoCollision_201 seeFriendlyInvisibles false

scoreboard objectives add ReversiData_201 dummy {"text":"リバーシのあれこれ保存用"}

#VSCode Extension : Datapack Helper Plus Define
#