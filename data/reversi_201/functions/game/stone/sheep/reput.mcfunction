summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:[temP]}
execute store result score $Current SheepID_X_201 run data get entity @e[limit=1,tag=temP] Pos[0] 10
execute store result score $Current SheepID_Y_201 run data get entity @e[limit=1,tag=temP] Pos[2] 10
kill @e[tag=temP]
execute as @e[type=sheep,tag=StoneSheep_201] if score $Current SheepID_X_201 = @s SheepID_X_201 if score $Current SheepID_Y_201 = @s SheepID_Y_201 run tp @s ~ 40.6 ~
execute as @e[type=sheep,tag=StoneSheep_201] if score $Current SheepID_X_201 = @s SheepID_X_201 if score $Current SheepID_Y_201 = @s SheepID_Y_201 run data modify entity @s Motion[1] set value 0.3d
execute if score $TurnColor ReversiData_201 matches 0 as @e[type=sheep,tag=StoneSheep_201] if score $Current SheepID_X_201 = @s SheepID_X_201 if score $Current SheepID_Y_201 = @s SheepID_Y_201 run data modify entity @s Color set value 15b
execute if score $TurnColor ReversiData_201 matches 1 as @e[type=sheep,tag=StoneSheep_201] if score $Current SheepID_X_201 = @s SheepID_X_201 if score $Current SheepID_Y_201 = @s SheepID_Y_201 run data modify entity @s Color set value 0b