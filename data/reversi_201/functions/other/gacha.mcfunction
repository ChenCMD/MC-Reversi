#> reversi_201:other/gacha
#
#
#
# @within function reversi_201:menu/action/skin.gacha
scoreboard players set #RANGE num_000 27
function tool_000:random

execute if score #RANDOM num_000 matches 0..2 if data storage reversi_201:data {UnlockSkins:["プレート"]} run tellraw @s [{"text":"スキン","color":"white"},{"text":" プレート ","color":"gold"},{"text":"を手に入れた... が既に持っているようだ。"}]
execute if score #RANDOM num_000 matches 0..2 if data storage reversi_201:data {UnlockSkins:["プレート"]} run playsound entity.villager.no player @s ~ ~ ~ 1 0.7
execute if score #RANDOM num_000 matches 0..2 unless data storage reversi_201:data {UnlockSkins:["プレート"]} run tellraw @s [{"text":"スキン","color":"white"},{"text":" プレート ","color":"gold"},{"text":"を手に入れた"}]
execute if score #RANDOM num_000 matches 0..2 unless data storage reversi_201:data {UnlockSkins:["プレート"]} run playsound entity.player.levelup player @s ~ ~ ~ 1 1.2
execute if score #RANDOM num_000 matches 0..2 run data modify storage reversi_201:data UnlockSkins append value "プレート"

execute if score #RANDOM num_000 matches 3..5 if data storage reversi_201:data {UnlockSkins:["アンシエント"]} run tellraw @s [{"text":"スキン","color":"white"},{"text":" アンシエント ","color":"gold"},{"text":"を手に入れた... が既に持っているようだ。"}]
execute if score #RANDOM num_000 matches 3..5 if data storage reversi_201:data {UnlockSkins:["アンシエント"]} run playsound entity.villager.no player @s ~ ~ ~ 1 0.7
execute if score #RANDOM num_000 matches 3..5 unless data storage reversi_201:data {UnlockSkins:["アンシエント"]} run tellraw @s [{"text":"スキン","color":"white"},{"text":" アンシエント ","color":"gold"},{"text":"を手に入れた"}]
execute if score #RANDOM num_000 matches 3..5 unless data storage reversi_201:data {UnlockSkins:["アンシエント"]} run playsound entity.player.levelup player @s ~ ~ ~ 1 1.2
execute if score #RANDOM num_000 matches 3..5 run data modify storage reversi_201:data UnlockSkins append value "アンシエント"

execute if score #RANDOM num_000 matches 6..8 if data storage reversi_201:data {UnlockSkins:["イリュージョン"]} run tellraw @s [{"text":"スキン","color":"white"},{"text":" イリュー ジョン","color":"gold"},{"text":"を手に入れた... が既に持っているようだ。"}]
execute if score #RANDOM num_000 matches 6..8 if data storage reversi_201:data {UnlockSkins:["イリュージョン"]} run playsound entity.villager.no player @s ~ ~ ~ 1 0.7
execute if score #RANDOM num_000 matches 6..8 unless data storage reversi_201:data {UnlockSkins:["イリュージョン"]} run tellraw @s [{"text":"スキン","color":"white"},{"text":" イリュー ジョン","color":"gold"},{"text":"を手に入れた"}]
execute if score #RANDOM num_000 matches 6..8 unless data storage reversi_201:data {UnlockSkins:["イリュージョン"]} run playsound entity.player.levelup player @s ~ ~ ~ 1 1.2
execute if score #RANDOM num_000 matches 6..8 run data modify storage reversi_201:data UnlockSkins append value "イリュージョン"

execute if score #RANDOM num_000 matches 9..11 if data storage reversi_201:data {UnlockSkins:["フェイスA"]} run tellraw @s [{"text":"スキン","color":"white"},{"text":" フェイスA ","color":"gold"},{"text":"を手に入れた... が既に持っているようだ。"}]
execute if score #RANDOM num_000 matches 9..11 if data storage reversi_201:data {UnlockSkins:["フェイスA"]} run playsound entity.villager.no player @s ~ ~ ~ 1 0.7
execute if score #RANDOM num_000 matches 9..11 unless data storage reversi_201:data {UnlockSkins:["フェイスA"]} run tellraw @s [{"text":"スキン","color":"white"},{"text":" フェイスA ","color":"gold"},{"text":"を手に入れた"}]
execute if score #RANDOM num_000 matches 9..11 unless data storage reversi_201:data {UnlockSkins:["フェイスA"]} run playsound entity.player.levelup player @s ~ ~ ~ 1 1.2
execute if score #RANDOM num_000 matches 9..11 run data modify storage reversi_201:data UnlockSkins append value "フェイスA"

execute if score #RANDOM num_000 matches 12..14 if data storage reversi_201:data {UnlockSkins:["フェイスB"]} run tellraw @s [{"text":"スキン","color":"white"},{"text":" フェイスB ","color":"gold"},{"text":"を手に入れた... が既に持っているようだ。"}]
execute if score #RANDOM num_000 matches 12..14 if data storage reversi_201:data {UnlockSkins:["フェイスB"]} run playsound entity.villager.no player @s ~ ~ ~ 1 0.7
execute if score #RANDOM num_000 matches 12..14 unless data storage reversi_201:data {UnlockSkins:["フェイスB"]} run tellraw @s [{"text":"スキン","color":"white"},{"text":" フェイスB ","color":"gold"},{"text":"を手に入れた"}]
execute if score #RANDOM num_000 matches 12..14 unless data storage reversi_201:data {UnlockSkins:["フェイスB"]} run playsound entity.player.levelup player @s ~ ~ ~ 1 1.2
execute if score #RANDOM num_000 matches 12..14 run data modify storage reversi_201:data UnlockSkins append value "フェイスB"

execute if score #RANDOM num_000 matches 15..15 if data storage reversi_201:data {UnlockSkins:["フェイスX"]} run tellraw @s [{"text":"スキン","color":"white"},{"text":" フェイスX ","color":"gold"},{"text":"を手に入れた... が既に持っているようだ。"}]
execute if score #RANDOM num_000 matches 15..15 if data storage reversi_201:data {UnlockSkins:["フェイスX"]} run playsound entity.villager.no player @s ~ ~ ~ 1 0.7
execute if score #RANDOM num_000 matches 15..15 unless data storage reversi_201:data {UnlockSkins:["フェイスX"]} run tellraw @s [{"text":"スキン","color":"white"},{"text":" フェイスX ","color":"gold"},{"text":"を手に入れた"}]
execute if score #RANDOM num_000 matches 15..15 unless data storage reversi_201:data {UnlockSkins:["フェイスX"]} run playsound entity.player.levelup player @s ~ ~ ~ 1 1.2
execute if score #RANDOM num_000 matches 15..15 run data modify storage reversi_201:data UnlockSkins append value "フェイスX"

execute if score #RANDOM num_000 matches 16..17 if data storage reversi_201:data {UnlockSkins:["スパイラル"]} run tellraw @s [{"text":"スキン","color":"white"},{"text":" スパイラル ","color":"gold"},{"text":"を手に入れた... が既に持っているようだ。"}]
execute if score #RANDOM num_000 matches 16..17 if data storage reversi_201:data {UnlockSkins:["スパイラル"]} run playsound entity.villager.no player @s ~ ~ ~ 1 0.7
execute if score #RANDOM num_000 matches 16..17 unless data storage reversi_201:data {UnlockSkins:["スパイラル"]} run tellraw @s [{"text":"スキン","color":"white"},{"text":" スパイラル ","color":"gold"},{"text":"を手に入れた"}]
execute if score #RANDOM num_000 matches 16..17 unless data storage reversi_201:data {UnlockSkins:["スパイラル"]} run playsound entity.player.levelup player @s ~ ~ ~ 1 1.2
execute if score #RANDOM num_000 matches 16..17 run data modify storage reversi_201:data UnlockSkins append value "スパイラル"

execute if score #RANDOM num_000 matches 18..18 if data storage reversi_201:data {UnlockSkins:["スパイラルX"]} run tellraw @s [{"text":"スキン","color":"white"},{"text":" スパイラルX ","color":"gold"},{"text":"を手に入れた... が既に持っているようだ。"}]
execute if score #RANDOM num_000 matches 18..18 if data storage reversi_201:data {UnlockSkins:["スパイラルX"]} run playsound entity.villager.no player @s ~ ~ ~ 1 0.7
execute if score #RANDOM num_000 matches 18..18 unless data storage reversi_201:data {UnlockSkins:["スパイラルX"]} run tellraw @s [{"text":"スキン","color":"white"},{"text":" スパイラルX ","color":"gold"},{"text":"を手に入れた"}]
execute if score #RANDOM num_000 matches 18..18 unless data storage reversi_201:data {UnlockSkins:["スパイラルX"]} run playsound entity.player.levelup player @s ~ ~ ~ 1 1.2
execute if score #RANDOM num_000 matches 18..18 run data modify storage reversi_201:data UnlockSkins append value "スパイラルX"

execute if score #RANDOM num_000 matches 19..20 if data storage reversi_201:data {UnlockSkins:["ポーン"]} run tellraw @s [{"text":"スキン","color":"white"},{"text":" ポーン ","color":"gold"},{"text":"を手に入れた... が既に持っているようだ。"}]
execute if score #RANDOM num_000 matches 19..20 if data storage reversi_201:data {UnlockSkins:["ポーン"]} run playsound entity.villager.no player @s ~ ~ ~ 1 0.7
execute if score #RANDOM num_000 matches 19..20 unless data storage reversi_201:data {UnlockSkins:["ポーン"]} run tellraw @s [{"text":"スキン","color":"white"},{"text":" ポーン ","color":"gold"},{"text":"を手に入れた"}]
execute if score #RANDOM num_000 matches 19..20 unless data storage reversi_201:data {UnlockSkins:["ポーン"]} run playsound entity.player.levelup player @s ~ ~ ~ 1 1.2
execute if score #RANDOM num_000 matches 19..20 run data modify storage reversi_201:data UnlockSkins append value "ポーン"

execute if score #RANDOM num_000 matches 21..21 if data storage reversi_201:data {UnlockSkins:["シュルカー"]} run tellraw @s [{"text":"スキン","color":"white"},{"text":" シュルカー ","color":"gold"},{"text":"を手に入れた... が既に持っているようだ。"}]
execute if score #RANDOM num_000 matches 21..21 if data storage reversi_201:data {UnlockSkins:["シュルカー"]} run playsound entity.villager.no player @s ~ ~ ~ 1 0.7
execute if score #RANDOM num_000 matches 21..21 unless data storage reversi_201:data {UnlockSkins:["シュルカー"]} run tellraw @s [{"text":"スキン","color":"white"},{"text":" シュルカー ","color":"gold"},{"text":"を手に入れた"}]
execute if score #RANDOM num_000 matches 21..21 unless data storage reversi_201:data {UnlockSkins:["シュルカー"]} run playsound entity.player.levelup player @s ~ ~ ~ 1 1.2
execute if score #RANDOM num_000 matches 21..21 run data modify storage reversi_201:data UnlockSkins append value "シュルカー"

execute if score #RANDOM num_000 matches 22..22 if data storage reversi_201:data {UnlockSkins:["チェスト"]} run tellraw @s [{"text":"スキン","color":"white"},{"text":" チェスト ","color":"gold"},{"text":"を手に入れた... が既に持っているようだ。"}]
execute if score #RANDOM num_000 matches 22..22 if data storage reversi_201:data {UnlockSkins:["チェスト"]} run playsound entity.villager.no player @s ~ ~ ~ 1 0.7
execute if score #RANDOM num_000 matches 22..22 unless data storage reversi_201:data {UnlockSkins:["チェスト"]} run tellraw @s [{"text":"スキン","color":"white"},{"text":" チェスト ","color":"gold"},{"text":"を手に入れた"}]
execute if score #RANDOM num_000 matches 22..22 unless data storage reversi_201:data {UnlockSkins:["チェスト"]} run playsound entity.player.levelup player @s ~ ~ ~ 1 1.2
execute if score #RANDOM num_000 matches 22..22 run data modify storage reversi_201:data UnlockSkins append value "チェスト"

execute if score #RANDOM num_000 matches 23..23 if data storage reversi_201:data {UnlockSkins:["サップリング"]} run tellraw @s [{"text":"スキン","color":"white"},{"text":" サップリング ","color":"gold"},{"text":"を手に入れた... が既に持っているようだ。"}]
execute if score #RANDOM num_000 matches 23..23 if data storage reversi_201:data {UnlockSkins:["サップリング"]} run playsound entity.villager.no player @s ~ ~ ~ 1 0.7
execute if score #RANDOM num_000 matches 23..23 unless data storage reversi_201:data {UnlockSkins:["サップリング"]} run tellraw @s [{"text":"スキン","color":"white"},{"text":" サップリング ","color":"gold"},{"text":"を手に入れた"}]
execute if score #RANDOM num_000 matches 23..23 unless data storage reversi_201:data {UnlockSkins:["サップリング"]} run playsound entity.player.levelup player @s ~ ~ ~ 1 1.2
execute if score #RANDOM num_000 matches 23..23 run data modify storage reversi_201:data UnlockSkins append value "サップリング"

execute if score #RANDOM num_000 matches 24..24 if data storage reversi_201:data {UnlockSkins:["スパイダー"]} run tellraw @s [{"text":"スキン","color":"white"},{"text":" スパイダー ","color":"gold"},{"text":"を手に入れた... が既に持っているようだ。"}]
execute if score #RANDOM num_000 matches 24..24 if data storage reversi_201:data {UnlockSkins:["スパイダー"]} run playsound entity.villager.no player @s ~ ~ ~ 1 0.7
execute if score #RANDOM num_000 matches 24..24 unless data storage reversi_201:data {UnlockSkins:["スパイダー"]} run tellraw @s [{"text":"スキン","color":"white"},{"text":" スパイダー ","color":"gold"},{"text":"を手に入れた"}]
execute if score #RANDOM num_000 matches 24..24 unless data storage reversi_201:data {UnlockSkins:["スパイダー"]} run playsound entity.player.levelup player @s ~ ~ ~ 1 1.2
execute if score #RANDOM num_000 matches 24..24 run data modify storage reversi_201:data UnlockSkins append value "スパイダー"

execute if score #RANDOM num_000 matches 25..26 if data storage reversi_201:data {UnlockSkins:["パズルピース"]} run tellraw @s [{"text":"スキン","color":"white"},{"text":" パズルピース ","color":"gold"},{"text":"を手に入れた... が既に持っているようだ。"}]
execute if score #RANDOM num_000 matches 25..26 if data storage reversi_201:data {UnlockSkins:["パズルピース"]} run playsound entity.villager.no player @s ~ ~ ~ 1 0.7
execute if score #RANDOM num_000 matches 25..26 unless data storage reversi_201:data {UnlockSkins:["パズルピース"]} run tellraw @s [{"text":"スキン","color":"white"},{"text":" パズルピース ","color":"gold"},{"text":"を手に入れた"}]
execute if score #RANDOM num_000 matches 25..26 unless data storage reversi_201:data {UnlockSkins:["パズルピース"]} run playsound entity.player.levelup player @s ~ ~ ~ 1 1.2
execute if score #RANDOM num_000 matches 25..26 run data modify storage reversi_201:data UnlockSkins append value "パズルピース"