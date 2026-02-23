# Add loot and set new marker if none
execute align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=minecraft:marker,tag=sgChest,limit=1,sort=nearest,distance=..0.8] run loot insert ~ ~ ~ loot sg:chests/sg_chest
execute align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=minecraft:marker,tag=sgChest,limit=1,sort=nearest,distance=..0.8] run function sg:scramble/scramble_container
execute align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=minecraft:marker,tag=sgChest,limit=1,sort=nearest,distance=..0.8] run function sg:scramble/scramble_container
execute align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=minecraft:marker,tag=sgChest,limit=1,sort=nearest,distance=..0.8] run summon minecraft:marker ~ ~ ~ {Tags:["sgChest"]}
execute align xyz positioned ~0.5 ~0.5 ~0.5 as @e[type=minecraft:marker,tag=sgChest,limit=1,sort=nearest,distance=..0.8] run scoreboard players operation @s sg = %iteration sg
