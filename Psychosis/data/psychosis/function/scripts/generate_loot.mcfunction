#Generates phantom membranes and increments score by 1 then kills skeleton (RUN BY THE PLAYER AT THE SKELETON LOCATION)
summon item ~ ~ ~ {Glowing:1b,Motion:[0.0,0.5,0.0],Tags:["psyItem","psyMore"],Item:{id:"minecraft:phantom_membrane",count:1b,components:{"minecraft:custom_data":{psychosis:1}}}}
summon item ~ ~ ~ {Glowing:1b,Motion:[0.0,0.5,0.0],Tags:["psyItem"],Item:{id:"minecraft:phantom_membrane",count:1b,components:{"minecraft:custom_data":{psychosis:2}}}}
execute as @e[tag=psyItem,sort=random,limit=1] if entity @s[tag=psyMore] run summon item ~ ~ ~ {Glowing:1b,Motion:[0.0,0.5,0.0],Tags:["psyItem"],Item:{id:"minecraft:phantom_membrane",count:1b,components:{"minecraft:custom_data":{psychosis:3}}}}
execute as @e[tag=psyItem,sort=random,limit=1] if entity @s[tag=psyMore] run summon item ~ ~ ~ {Glowing:1b,Motion:[0.0,0.5,0.0],Tags:["psyItem"],Item:{id:"minecraft:phantom_membrane",count:1b,components:{"minecraft:custom_data":{psychosis:4}}}}
execute as @e[tag=psyItem,sort=random,limit=1] if entity @s[tag=psyMore] run summon item ~ ~ ~ {Glowing:1b,Motion:[0.0,0.5,0.0],Tags:["psyItem"],Item:{id:"minecraft:phantom_membrane",count:1b,components:{"minecraft:custom_data":{psychosis:5}}}}

execute as @e[tag=psyItem] store result entity @s Motion[0] double 0.01 run random value -8..8
execute as @e[tag=psyItem] store result entity @s Motion[2] double 0.01 run random value -8..8

scoreboard players add @s psychosis 1

execute as @e[tag=psyCreature,type=minecraft:skeleton,limit=1,sort=nearest] run function psychosis:scripts/kill_creature

execute as @e[tag=psyItem] run tag @s remove psyItem
execute as @e[tag=psyMore] run tag @s remove psyMore
