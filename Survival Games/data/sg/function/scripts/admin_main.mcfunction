# Loops when admin is trying to set custom world settings
tellraw @a[scores={admin=1..}] {"bold":false,"color":"white","text":"Success!"}
tellraw @a[scores={admin=1..}] {"bold":false,"color":"white","text":""}

execute if score %admin sg matches 0 as @a[scores={admin=1..}] run tellraw @s {"bold":false,"color":"gold","text":"Please use /trigger admin on player spawn 1 (Red 1)"}
execute if score %admin sg matches 1 as @a[scores={admin=1..}] run execute store result score #red1x sg run data get entity @s Pos[0]
execute if score %admin sg matches 1 as @a[scores={admin=1..}] run execute store result score #red1y sg run data get entity @s Pos[1]
execute if score %admin sg matches 1 as @a[scores={admin=1..}] run execute store result score #red1z sg run data get entity @s Pos[2]

execute if score %admin sg matches 1 as @a[scores={admin=1..}] run tellraw @s {"bold":false,"color":"gold","text":"Please use /trigger admin on player spawn 2 (Red 2)"}
execute if score %admin sg matches 2 as @a[scores={admin=1..}] run execute store result score #red2x sg run data get entity @s Pos[0]
execute if score %admin sg matches 2 as @a[scores={admin=1..}] run execute store result score #red2y sg run data get entity @s Pos[1]
execute if score %admin sg matches 2 as @a[scores={admin=1..}] run execute store result score #red2z sg run data get entity @s Pos[2]

execute if score %admin sg matches 2 as @a[scores={admin=1..}] run tellraw @s {"bold":false,"color":"gold","text":"Please use /trigger admin on player spawn 3 (Red 3)"}
execute if score %admin sg matches 3 as @a[scores={admin=1..}] run execute store result score #red3x sg run data get entity @s Pos[0]
execute if score %admin sg matches 3 as @a[scores={admin=1..}] run execute store result score #red3y sg run data get entity @s Pos[1]
execute if score %admin sg matches 3 as @a[scores={admin=1..}] run execute store result score #red3z sg run data get entity @s Pos[2]

execute if score %admin sg matches 3 as @a[scores={admin=1..}] run tellraw @s {"bold":false,"color":"gold","text":"Please use /trigger admin on player spawn 4 (Red 4)"}
execute if score %admin sg matches 4 as @a[scores={admin=1..}] run execute store result score #red4x sg run data get entity @s Pos[0]
execute if score %admin sg matches 4 as @a[scores={admin=1..}] run execute store result score #red4y sg run data get entity @s Pos[1]
execute if score %admin sg matches 4 as @a[scores={admin=1..}] run execute store result score #red4z sg run data get entity @s Pos[2]

execute if score %admin sg matches 4 as @a[scores={admin=1..}] run tellraw @s {"bold":false,"color":"gold","text":"Please use /trigger admin on player spawn 5 (Yellow 1)"}
execute if score %admin sg matches 5 as @a[scores={admin=1..}] run execute store result score #yellow1x sg run data get entity @s Pos[0]
execute if score %admin sg matches 5 as @a[scores={admin=1..}] run execute store result score #yellow1y sg run data get entity @s Pos[1]
execute if score %admin sg matches 5 as @a[scores={admin=1..}] run execute store result score #yellow1z sg run data get entity @s Pos[2]

execute if score %admin sg matches 5 as @a[scores={admin=1..}] run tellraw @s {"bold":false,"color":"gold","text":"Please use /trigger admin on player spawn 6 (Yellow 2)"}
execute if score %admin sg matches 6 as @a[scores={admin=1..}] run execute store result score #yellow2x sg run data get entity @s Pos[0]
execute if score %admin sg matches 6 as @a[scores={admin=1..}] run execute store result score #yellow2y sg run data get entity @s Pos[1]
execute if score %admin sg matches 6 as @a[scores={admin=1..}] run execute store result score #yellow2z sg run data get entity @s Pos[2]

execute if score %admin sg matches 6 as @a[scores={admin=1..}] run tellraw @s {"bold":false,"color":"gold","text":"Please use /trigger admin on player spawn 7 (Yellow 3)"}
execute if score %admin sg matches 7 as @a[scores={admin=1..}] run execute store result score #yellow3x sg run data get entity @s Pos[0]
execute if score %admin sg matches 7 as @a[scores={admin=1..}] run execute store result score #yellow3y sg run data get entity @s Pos[1]
execute if score %admin sg matches 7 as @a[scores={admin=1..}] run execute store result score #yellow3z sg run data get entity @s Pos[2]

execute if score %admin sg matches 7 as @a[scores={admin=1..}] run tellraw @s {"bold":false,"color":"gold","text":"Please use /trigger admin on player spawn 8 (Yellow 4)"}
execute if score %admin sg matches 8 as @a[scores={admin=1..}] run execute store result score #yellow4x sg run data get entity @s Pos[0]
execute if score %admin sg matches 8 as @a[scores={admin=1..}] run execute store result score #yellow4y sg run data get entity @s Pos[1]
execute if score %admin sg matches 8 as @a[scores={admin=1..}] run execute store result score #yellow4z sg run data get entity @s Pos[2]

execute if score %admin sg matches 8 as @a[scores={admin=1..}] run tellraw @s {"bold":false,"color":"gold","text":"Please use /trigger admin on player spawn 9 (Blue 1)"}
execute if score %admin sg matches 9 as @a[scores={admin=1..}] run execute store result score #blue1x sg run data get entity @s Pos[0]
execute if score %admin sg matches 9 as @a[scores={admin=1..}] run execute store result score #blue1y sg run data get entity @s Pos[1]
execute if score %admin sg matches 9 as @a[scores={admin=1..}] run execute store result score #blue1z sg run data get entity @s Pos[2]

execute if score %admin sg matches 9 as @a[scores={admin=1..}] run tellraw @s {"bold":false,"color":"gold","text":"Please use /trigger admin on player spawn 10 (Blue 2)"}
execute if score %admin sg matches 10 as @a[scores={admin=1..}] run execute store result score #blue2x sg run data get entity @s Pos[0]
execute if score %admin sg matches 10 as @a[scores={admin=1..}] run execute store result score #blue2y sg run data get entity @s Pos[1]
execute if score %admin sg matches 10 as @a[scores={admin=1..}] run execute store result score #blue2z sg run data get entity @s Pos[2]

execute if score %admin sg matches 10 as @a[scores={admin=1..}] run tellraw @s {"bold":false,"color":"gold","text":"Please use /trigger admin on player spawn 11 (Blue 3)"}
execute if score %admin sg matches 11 as @a[scores={admin=1..}] run execute store result score #blue3x sg run data get entity @s Pos[0]
execute if score %admin sg matches 11 as @a[scores={admin=1..}] run execute store result score #blue3y sg run data get entity @s Pos[1]
execute if score %admin sg matches 11 as @a[scores={admin=1..}] run execute store result score #blue3z sg run data get entity @s Pos[2]

execute if score %admin sg matches 11 as @a[scores={admin=1..}] run tellraw @s {"bold":false,"color":"gold","text":"Please use /trigger admin on player spawn 12 (Blue 4)"}
execute if score %admin sg matches 12 as @a[scores={admin=1..}] run execute store result score #blue4x sg run data get entity @s Pos[0]
execute if score %admin sg matches 12 as @a[scores={admin=1..}] run execute store result score #blue4y sg run data get entity @s Pos[1]
execute if score %admin sg matches 12 as @a[scores={admin=1..}] run execute store result score #blue4z sg run data get entity @s Pos[2]

execute if score %admin sg matches 12 as @a[scores={admin=1..}] run tellraw @s {"bold":false,"color":"gold","text":"Please use /trigger admin on player spawn 13 (Green 1)"}
execute if score %admin sg matches 13 as @a[scores={admin=1..}] run execute store result score #green1x sg run data get entity @s Pos[0]
execute if score %admin sg matches 13 as @a[scores={admin=1..}] run execute store result score #green1y sg run data get entity @s Pos[1]
execute if score %admin sg matches 13 as @a[scores={admin=1..}] run execute store result score #green1z sg run data get entity @s Pos[2]

execute if score %admin sg matches 13 as @a[scores={admin=1..}] run tellraw @s {"bold":false,"color":"gold","text":"Please use /trigger admin on player spawn 14 (Green 2)"}
execute if score %admin sg matches 14 as @a[scores={admin=1..}] run execute store result score #green2x sg run data get entity @s Pos[0]
execute if score %admin sg matches 14 as @a[scores={admin=1..}] run execute store result score #green2y sg run data get entity @s Pos[1]
execute if score %admin sg matches 14 as @a[scores={admin=1..}] run execute store result score #green2z sg run data get entity @s Pos[2]

execute if score %admin sg matches 14 as @a[scores={admin=1..}] run tellraw @s {"bold":false,"color":"gold","text":"Please use /trigger admin on player spawn 15 (Green 3)"}
execute if score %admin sg matches 15 as @a[scores={admin=1..}] run execute store result score #green3x sg run data get entity @s Pos[0]
execute if score %admin sg matches 15 as @a[scores={admin=1..}] run execute store result score #green3y sg run data get entity @s Pos[1]
execute if score %admin sg matches 15 as @a[scores={admin=1..}] run execute store result score #green3z sg run data get entity @s Pos[2]

execute if score %admin sg matches 15 as @a[scores={admin=1..}] run tellraw @s {"bold":false,"color":"gold","text":"Please use /trigger admin on player spawn 16 (Green 4)"}
execute if score %admin sg matches 16 as @a[scores={admin=1..}] run execute store result score #green4x sg run data get entity @s Pos[0]
execute if score %admin sg matches 16 as @a[scores={admin=1..}] run execute store result score #green4y sg run data get entity @s Pos[1]
execute if score %admin sg matches 16 as @a[scores={admin=1..}] run execute store result score #green4z sg run data get entity @s Pos[2]

execute if score %admin sg matches 16 as @a[scores={admin=1..}] run tellraw @s {"bold":false,"color":"gold","text":"Please use /trigger admin on player spawn 17 (Aqua 1)"}
execute if score %admin sg matches 17 as @a[scores={admin=1..}] run execute store result score #aqua1x sg run data get entity @s Pos[0]
execute if score %admin sg matches 17 as @a[scores={admin=1..}] run execute store result score #aqua1y sg run data get entity @s Pos[1]
execute if score %admin sg matches 17 as @a[scores={admin=1..}] run execute store result score #aqua1z sg run data get entity @s Pos[2]

execute if score %admin sg matches 17 as @a[scores={admin=1..}] run tellraw @s {"bold":false,"color":"gold","text":"Please use /trigger admin on player spawn 18 (Aqua 2)"}
execute if score %admin sg matches 18 as @a[scores={admin=1..}] run execute store result score #aqua2x sg run data get entity @s Pos[0]
execute if score %admin sg matches 18 as @a[scores={admin=1..}] run execute store result score #aqua2y sg run data get entity @s Pos[1]
execute if score %admin sg matches 18 as @a[scores={admin=1..}] run execute store result score #aqua2z sg run data get entity @s Pos[2]

execute if score %admin sg matches 18 as @a[scores={admin=1..}] run tellraw @s {"bold":false,"color":"gold","text":"Please use /trigger admin on player spawn 19 (Aqua 3)"}
execute if score %admin sg matches 19 as @a[scores={admin=1..}] run execute store result score #aqua3x sg run data get entity @s Pos[0]
execute if score %admin sg matches 19 as @a[scores={admin=1..}] run execute store result score #aqua3y sg run data get entity @s Pos[1]
execute if score %admin sg matches 19 as @a[scores={admin=1..}] run execute store result score #aqua3z sg run data get entity @s Pos[2]

execute if score %admin sg matches 19 as @a[scores={admin=1..}] run tellraw @s {"bold":false,"color":"gold","text":"Please use /trigger admin on player spawn 20 (Aqua 4)"}
execute if score %admin sg matches 20 as @a[scores={admin=1..}] run execute store result score #aqua4x sg run data get entity @s Pos[0]
execute if score %admin sg matches 20 as @a[scores={admin=1..}] run execute store result score #aqua4y sg run data get entity @s Pos[1]
execute if score %admin sg matches 20 as @a[scores={admin=1..}] run execute store result score #aqua4z sg run data get entity @s Pos[2]

execute if score %admin sg matches 20 as @a[scores={admin=1..}] run tellraw @s {"bold":false,"color":"gold","text":"Please use /trigger admin on player spawn 21 (Purple 1)"}
execute if score %admin sg matches 21 as @a[scores={admin=1..}] run execute store result score #purple1x sg run data get entity @s Pos[0]
execute if score %admin sg matches 21 as @a[scores={admin=1..}] run execute store result score #purple1y sg run data get entity @s Pos[1]
execute if score %admin sg matches 21 as @a[scores={admin=1..}] run execute store result score #purple1z sg run data get entity @s Pos[2]

execute if score %admin sg matches 21 as @a[scores={admin=1..}] run tellraw @s {"bold":false,"color":"gold","text":"Please use /trigger admin on player spawn 22 (Purple 2)"}
execute if score %admin sg matches 22 as @a[scores={admin=1..}] run execute store result score #purple2x sg run data get entity @s Pos[0]
execute if score %admin sg matches 22 as @a[scores={admin=1..}] run execute store result score #purple2y sg run data get entity @s Pos[1]
execute if score %admin sg matches 22 as @a[scores={admin=1..}] run execute store result score #purple2z sg run data get entity @s Pos[2]

execute if score %admin sg matches 22 as @a[scores={admin=1..}] run tellraw @s {"bold":false,"color":"gold","text":"Please use /trigger admin on player spawn 23 (Purple 3)"}
execute if score %admin sg matches 23 as @a[scores={admin=1..}] run execute store result score #purple3x sg run data get entity @s Pos[0]
execute if score %admin sg matches 23 as @a[scores={admin=1..}] run execute store result score #purple3y sg run data get entity @s Pos[1]
execute if score %admin sg matches 23 as @a[scores={admin=1..}] run execute store result score #purple3z sg run data get entity @s Pos[2]

execute if score %admin sg matches 23 as @a[scores={admin=1..}] run tellraw @s {"bold":false,"color":"gold","text":"Please use /trigger admin on player spawn 24 (Purple 4)"}
execute if score %admin sg matches 24 as @a[scores={admin=1..}] run execute store result score #purple4x sg run data get entity @s Pos[0]
execute if score %admin sg matches 24 as @a[scores={admin=1..}] run execute store result score #purple4y sg run data get entity @s Pos[1]
execute if score %admin sg matches 24 as @a[scores={admin=1..}] run execute store result score #purple4z sg run data get entity @s Pos[2]

execute if score %admin sg matches 24 as @a[scores={admin=1..}] run tellraw @s {"bold":false,"color":"gold","text":"Please use /trigger admin on supply drop 1 (Warning: This will fill iron blocks below)"}
execute if score %admin sg matches 24 as @a[scores={admin=1..}] run tellraw @s {"bold":false,"color":"gold","text":"Make sure you are within half of the border range, supply drop happens after the first border shrink!"}
execute if score %admin sg matches 25 as @a[scores={admin=1..}] run execute store result score #supply1x sg run data get entity @s Pos[0]
execute if score %admin sg matches 25 as @a[scores={admin=1..}] run execute store result score #supply1y sg run data get entity @s Pos[1]
execute if score %admin sg matches 25 as @a[scores={admin=1..}] run execute store result score #supply1z sg run data get entity @s Pos[2]
execute if score %admin sg matches 25 as @a[scores={admin=1..}] at @s run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 minecraft:iron_block

execute if score %admin sg matches 25 as @a[scores={admin=1..}] run tellraw @s {"bold":false,"color":"gold","text":"Please use /trigger admin on supply drop 2 (Warning: This will fill iron blocks below)"}
execute if score %admin sg matches 25 as @a[scores={admin=1..}] run tellraw @s {"bold":false,"color":"gold","text":"Make sure you are within half of the border range, supply drop happens after the first border shrink!"}
execute if score %admin sg matches 26 as @a[scores={admin=1..}] run execute store result score #supply2x sg run data get entity @s Pos[0]
execute if score %admin sg matches 26 as @a[scores={admin=1..}] run execute store result score #supply2y sg run data get entity @s Pos[1]
execute if score %admin sg matches 26 as @a[scores={admin=1..}] run execute store result score #supply2z sg run data get entity @s Pos[2]
execute if score %admin sg matches 26 as @a[scores={admin=1..}] at @s run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 minecraft:iron_block

execute if score %admin sg matches 26 as @a[scores={admin=1..}] run tellraw @s {"bold":false,"color":"gold","text":"Please use /trigger admin on supply drop 3 (Warning: This will fill iron blocks below)"}
execute if score %admin sg matches 26 as @a[scores={admin=1..}] run tellraw @s {"bold":false,"color":"gold","text":"Make sure you are within half of the border range, supply drop happens after the first border shrink!"}
execute if score %admin sg matches 27 as @a[scores={admin=1..}] run execute store result score #supply3x sg run data get entity @s Pos[0]
execute if score %admin sg matches 27 as @a[scores={admin=1..}] run execute store result score #supply3y sg run data get entity @s Pos[1]
execute if score %admin sg matches 27 as @a[scores={admin=1..}] run execute store result score #supply3z sg run data get entity @s Pos[2]
execute if score %admin sg matches 27 as @a[scores={admin=1..}] at @s run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 minecraft:iron_block

execute if score %admin sg matches 27 as @a[scores={admin=1..}] run tellraw @s {"bold":false,"color":"gold","text":"Please use /trigger admin on supply drop 4 (Warning: This will fill iron blocks below)"}
execute if score %admin sg matches 27 as @a[scores={admin=1..}] run tellraw @s {"bold":false,"color":"gold","text":"Make sure you are within half of the border range, supply drop happens after the first border shrink!"}
execute if score %admin sg matches 28 as @a[scores={admin=1..}] run execute store result score #supply4x sg run data get entity @s Pos[0]
execute if score %admin sg matches 28 as @a[scores={admin=1..}] run execute store result score #supply4y sg run data get entity @s Pos[1]
execute if score %admin sg matches 28 as @a[scores={admin=1..}] run execute store result score #supply4z sg run data get entity @s Pos[2]
execute if score %admin sg matches 28 as @a[scores={admin=1..}] at @s run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 minecraft:iron_block

execute if score %admin sg matches 28 as @a[scores={admin=1..}] run tellraw @s {"bold":false,"color":"gold","text":"Please use /trigger admin on world spawn (World border center)"}
execute if score %admin sg matches 29 as @a[scores={admin=1..}] run execute store result score #world_center_x sg run data get entity @s Pos[0]
execute if score %admin sg matches 29 as @a[scores={admin=1..}] run execute store result score #world_center_z sg run data get entity @s Pos[2]

execute if score %admin sg matches 29 as @a[scores={admin=1..}] run tellraw @s [{"bold":false,"color":"gold","text":"Please use "},{"bold":true,"color":"light_purple","text":"/trigger admin set <size>"},{"bold":false,"color":"gold","text":" to set the max world border diameter!"}]
execute if score %admin sg matches 30 as @a[scores={admin=1..}] run execute store result score #world_border_diam sg run scoreboard players get @s admin

execute if score %admin sg matches 30 as @a[scores={admin=1..}] run tellraw @s [{"bold":false,"color":"gold","text":"Please use "},{"bold":true,"color":"light_purple","text":"/trigger admin set <size>"},{"bold":false,"color":"gold","text":" to set the deathmatch diameter!"}]
execute if score %admin sg matches 31 as @a[scores={admin=1..}] run execute store result score #deathmatch_diam sg run scoreboard players get @s admin
execute if score %admin sg matches 31 as @a[scores={admin=1..}] run tellraw @s [{"bold":false,"color":"light_purple","text":"Your settings have been saved."}]

# Next admin setting
execute as @a[scores={admin=1..}] run scoreboard players add %admin sg 1
execute as @a[scores={admin=1..}] run scoreboard players enable @s admin
execute as @a[scores={admin=1..}] run scoreboard players set @s admin 0

# Disable admin and reset %admin when everything is done. 
execute if score %admin sg matches 32 as @a[scores={admin=1..}] run trigger admin set 0
execute if score %admin sg matches 32 run function sg:scripts/export_settings
execute if score %admin sg matches 32 run scoreboard players set %admin sg 0
