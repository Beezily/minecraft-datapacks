# Add loot and set new marker if none
execute align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=minecraft:marker,tag=sgChest,limit=1,sort=nearest,distance=..1] run loot insert ~ ~ ~ loot sg:chests/sg_chest
execute align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=minecraft:marker,tag=sgChest,limit=1,sort=nearest,distance=..1] run summon minecraft:marker ~ ~ ~ {Tags:["sgChest"]}

# If prev marker present, clear with loot or no clear based on marker iteration
execute align xyz positioned ~0.5 ~0.5 ~0.5 as @e[type=minecraft:marker,tag=sgChest,limit=1,sort=nearest,distance=..1] unless score @s sg = %iteration sg run data modify block ~ ~ ~ Items set value []
execute align xyz positioned ~0.5 ~0.5 ~0.5 as @e[type=minecraft:marker,tag=sgChest,limit=1,sort=nearest,distance=..1] unless score @s sg = %iteration sg run loot insert ~ ~ ~ loot sg:chests/sg_chest
execute align xyz positioned ~0.5 ~0.5 ~0.5 as @e[type=minecraft:marker,tag=sgChest,limit=1,sort=nearest,distance=..1] unless score @s sg = %iteration sg run scoreboard players operation @s sg = %iteration sg

