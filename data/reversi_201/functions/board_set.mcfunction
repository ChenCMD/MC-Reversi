execute at @e[tag=BoardSize_201] run fill 2064 40 16 ~1 40 ~1 air
execute at @e[tag=BoardSize_201] run fill 2064 0 16 ~1 10 ~1 air
kill @e[tag=BoardSize_201]
summon armor_stand 2065 11 17 {Rotation:[-45.0f],Marker:1b,Invisible:1b,Tags:[BoardSize_201]}
scoreboard players operation #BoardSizeC ReversiData_201 = $BoardSize ReversiData_201
execute as @e[tag=BoardSize_201] at @s run function reversi_201:core/size_set_loop
execute at @e[tag=BoardSize_201] run fill 2064 40 16 ~1 40 ~1 polished_diorite_slab[type=bottom]
execute at @e[tag=BoardSize_201] run fill 2064 0 16 ~1 10 ~1 white_stained_glass
execute at @e[tag=BoardSize_201] run clone 2065 11 17 ~ 11 ~ 2065 40 17
execute at @e[tag=BoardSize_201] run fill 2065 0 17 ~ 10 ~ air

kill @e[tag=Corner_201]
kill @e[tag=PreCorner_201]
function reversi_201:core/corner_summon