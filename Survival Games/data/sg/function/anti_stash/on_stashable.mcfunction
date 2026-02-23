# Create new marker with current iteration so we can clear it on new game (unless already exists)
execute align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=minecraft:marker,tag=sgStash,limit=1,sort=nearest,distance=..0.8] run summon minecraft:marker ~ ~ ~ {Tags:["sgStash"]}
execute align xyz positioned ~0.5 ~0.5 ~0.5 as @e[type=minecraft:marker,tag=sgStash,limit=1,sort=nearest,distance=..0.8] run scoreboard players operation @s sg = %iteration sg
