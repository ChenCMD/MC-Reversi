# S + + + + +
# + + + + + +
# + + + + + +
# + + + + + +    Z+
# + + + + + +  X+  X-
# + + + + + P    Z-
summon armor_stand 2065 10 17 {Marker:1b,Invisible:1b,Tags:[Board_201,Entity_201]}

execute as @e[tag=Board_201] store result entity @s Pos[0] double 0.001 run data get entity @e[limit=1,tag=BoardPos_201] Pos[0] 1000
execute as @e[tag=Board_201] store result entity @s Pos[2] double 0.001 run data get entity @e[limit=1,tag=BoardPos_201] Pos[2] 1000
execute as @e[tag=Board_201] at @s run summon area_effect_cloud ~0 ~ ~0 {Rotation:[0f,90f],Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:[Corner_201,Entity_201]}
execute as @e[tag=Board_201] at @s run summon area_effect_cloud ~0 ~ ~1 {Rotation:[0f,90f],Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:[PreCorner_201,Entity_201]}
execute as @e[tag=Board_201] at @s run summon area_effect_cloud ~1 ~ ~1 {Rotation:[0f,90f],Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:[PreCorner_201,Entity_201]}
execute as @e[tag=Board_201] at @s run summon area_effect_cloud ~1 ~ ~0 {Rotation:[0f,90f],Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:[PreCorner_201,Entity_201]}

execute as @e[tag=Board_201] store result entity @s Pos[0] double 0.001 run data get entity @e[limit=1,tag=BoardPos_201] Pos[0] 1000
execute as @e[tag=Board_201] store result entity @s Pos[2] double 0.001 run data get entity @e[limit=1,tag=BoardSize_201] Pos[2] 1000
execute as @e[tag=Board_201] at @s run summon area_effect_cloud ~0 ~ ~00 {Rotation:[0f,90f],Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:[Corner_201,Entity_201]}
execute as @e[tag=Board_201] at @s run summon area_effect_cloud ~0 ~ ~-1 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:[PreCorner_201,Entity_201]}
execute as @e[tag=Board_201] at @s run summon area_effect_cloud ~1 ~ ~-1 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:[PreCorner_201,Entity_201]}
execute as @e[tag=Board_201] at @s run summon area_effect_cloud ~1 ~ ~00 {Rotation:[0f,90f],Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:[PreCorner_201,Entity_201]}

execute as @e[tag=Board_201] store result entity @s Pos[0] double 0.001 run data get entity @e[limit=1,tag=BoardSize_201] Pos[0] 1000
execute as @e[tag=Board_201] store result entity @s Pos[2] double 0.001 run data get entity @e[limit=1,tag=BoardPos_201] Pos[2] 1000
execute as @e[tag=Board_201] at @s run summon area_effect_cloud ~00 ~ ~0 {Rotation:[0f,90f],Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:[Corner_201,Entity_201]}
execute as @e[tag=Board_201] at @s run summon area_effect_cloud ~-0 ~ ~1 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:[PreCorner_201,Entity_201]}
execute as @e[tag=Board_201] at @s run summon area_effect_cloud ~-1 ~ ~1 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:[PreCorner_201,Entity_201]}
execute as @e[tag=Board_201] at @s run summon area_effect_cloud ~-1 ~ ~0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:[PreCorner_201,Entity_201]}

execute as @e[tag=Board_201] store result entity @s Pos[0] double 0.001 run data get entity @e[limit=1,tag=BoardSize_201] Pos[0] 1000
execute as @e[tag=Board_201] store result entity @s Pos[2] double 0.001 run data get entity @e[limit=1,tag=BoardSize_201] Pos[2] 1000
execute as @e[tag=Board_201] at @s run summon area_effect_cloud ~00 ~ ~00 {Rotation:[0f,90f],Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:[Corner_201,Entity_201]}
execute as @e[tag=Board_201] at @s run summon area_effect_cloud ~-0 ~ ~-1 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:[PreCorner_201,Entity_201]}
execute as @e[tag=Board_201] at @s run summon area_effect_cloud ~-1 ~ ~-1 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:[PreCorner_201,Entity_201]}
execute as @e[tag=Board_201] at @s run summon area_effect_cloud ~-1 ~ ~-0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:[PreCorner_201,Entity_201]}

kill @e[tag=Board_201]