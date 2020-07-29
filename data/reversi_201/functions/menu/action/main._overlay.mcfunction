kill @e[tag=hologram.overlay.0_201]
summon armor_stand 2070.37 41.1 38.8 {CustomName:"\"        \"",CustomNameVisible:1b,Marker:1b,Invisible:1b,Tags:[hologram.overlay.0_201]}
execute unless score $vsAI ReversiData_201 matches 0 as @a[tag=Player_Black_201,scores={playing_000=201}] run loot spawn 2070.37 300 38.8 loot player_000:head
execute if score $vsAI ReversiData_201 matches 0 run summon item 2070.37 300 38.8 {Item:{id:"barrier",Count:1b,tag:{display:{Name:'{"text":"AI"}'}}}}
data modify entity @e[tag=hologram.overlay.0_201,distance=..0.0001,x=2070.37,y=41.1,z=38.8,limit=1] CustomName set from entity @e[type=item,distance=..0,x=2070.37,y=300,z=38.8,limit=1] Item.tag.display.Name
kill @e[type=item,distance=..0,x=2070.37,y=300,z=38.8,limit=1]

kill @e[tag=hologram.overlay.1_201]
summon armor_stand 2067.77 41.1 38.8 {CustomName:"\"        \"",CustomNameVisible:1b,Marker:1b,Invisible:1b,Tags:[hologram.overlay.1_201]}
execute unless score $vsAI ReversiData_201 matches 1 as @a[tag=Player_White_201,scores={playing_000=201}] run loot spawn 2067.77 300 38.8 loot player_000:head
execute if score $vsAI ReversiData_201 matches 1 run summon item 2067.77 300 38.8 {Item:{id:"barrier",Count:1b,tag:{display:{Name:'{"text":"AI"}'}}}}
data modify entity @e[tag=hologram.overlay.1_201,distance=..0.0001,x=2067.77,y=41.1,z=38.8,limit=1] CustomName set from entity @e[type=item,distance=..0,x=2067.77,y=300,z=38.8,limit=1] Item.tag.display.Name
kill @e[type=item,distance=..0,x=2067.77,y=300,z=38.8,limit=1]