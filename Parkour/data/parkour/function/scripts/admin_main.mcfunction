# Loops when admin is trying to set custom world settings
execute unless score %admin parkour matches 0 run tellraw @a[scores={admin=1..}] {"bold":false,"color":"white","text":"Success!"}
execute unless score %admin parkour matches 0 run tellraw @a[scores={admin=1..}] {"bold":false,"color":"white","text":""}
execute unless score %admin parkour matches 0 as @a[scores={admin=1..}] at @s run playsound item.book.page_turn master @s ~ ~ ~ 1 1 1

execute if score %admin parkour matches 0 as @a[scores={admin=1..}] run tellraw @s {"bold":false,"color":"gold","text":"Please use /trigger admin on player spawn (caged)"}
execute if score %admin parkour matches 1 as @a[scores={admin=1..}] at @s run setworldspawn ~ ~ ~
execute if score %admin parkour matches 1 as @a[scores={admin=1..}] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run summon marker ~ ~ ~ {Tags:["parkourMarker","parkourSpawn"]}
execute if score %admin parkour matches 1 as @a[scores={admin=1..}] at @s run forceload add ~ ~ ~ ~

execute if score %admin parkour matches 1 as @a[scores={admin=1..}] run tellraw @s {"bold":false,"color":"gold","text":"Please use /trigger admin on start point"}
execute if score %admin parkour matches 2 as @a[scores={admin=1..}] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run summon marker ~ ~ ~ {Tags:["parkourMarker","parkourStart"]}
execute if score %admin parkour matches 2 as @a[scores={admin=1..}] at @s run forceload add ~ ~ ~ ~

execute if score %admin parkour matches 2 as @a[scores={admin=1..}] run tellraw @s {"bold":false,"color":"gold","text":"Please use /trigger admin on checkpoint 1 (places blocks)"}
execute if score %admin parkour matches 3 as @a[scores={admin=1..}] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run summon marker ~ ~ ~ {Tags:["parkourMarker","parkourCheck1","parkourCheck"]}
execute if score %admin parkour matches 3 as @a[scores={admin=1..}] at @s run forceload add ~ ~ ~ ~
execute if score %admin parkour matches 3 as @a[scores={admin=1..}] at @s run setblock ~ ~-1 ~ minecraft:beacon
execute if score %admin parkour matches 3 as @a[scores={admin=1..}] at @s run fill ~-1 ~-2 ~-1 ~1 ~-2 ~1 minecraft:iron_block
execute if score %admin parkour matches 3 as @a[scores={admin=1..}] at @s run setblock ~ ~ ~ minecraft:light_weighted_pressure_plate

execute if score %admin parkour matches 3 as @a[scores={admin=1..}] run tellraw @s {"bold":false,"color":"gold","text":"Please use /trigger admin on checkpoint 2 (places blocks)"}
execute if score %admin parkour matches 4 as @a[scores={admin=1..}] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run summon marker ~ ~ ~ {Tags:["parkourMarker","parkourCheck2","parkourCheck"]}
execute if score %admin parkour matches 4 as @a[scores={admin=1..}] at @s run forceload add ~ ~ ~ ~
execute if score %admin parkour matches 4 as @a[scores={admin=1..}] at @s run setblock ~ ~-1 ~ minecraft:beacon
execute if score %admin parkour matches 4 as @a[scores={admin=1..}] at @s run fill ~-1 ~-2 ~-1 ~1 ~-2 ~1 minecraft:iron_block
execute if score %admin parkour matches 4 as @a[scores={admin=1..}] at @s run setblock ~ ~ ~ minecraft:light_weighted_pressure_plate

execute if score %admin parkour matches 4 as @a[scores={admin=1..}] run tellraw @s {"bold":false,"color":"gold","text":"Please use /trigger admin on checkpoint 3 (places blocks)"}
execute if score %admin parkour matches 5 as @a[scores={admin=1..}] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run summon marker ~ ~ ~ {Tags:["parkourMarker","parkourCheck3","parkourCheck"]}
execute if score %admin parkour matches 5 as @a[scores={admin=1..}] at @s run forceload add ~ ~ ~ ~
execute if score %admin parkour matches 5 as @a[scores={admin=1..}] at @s run setblock ~ ~-1 ~ minecraft:beacon
execute if score %admin parkour matches 5 as @a[scores={admin=1..}] at @s run fill ~-1 ~-2 ~-1 ~1 ~-2 ~1 minecraft:iron_block
execute if score %admin parkour matches 5 as @a[scores={admin=1..}] at @s run setblock ~ ~ ~ minecraft:light_weighted_pressure_plate

execute if score %admin parkour matches 5 as @a[scores={admin=1..}] run tellraw @s {"bold":false,"color":"gold","text":"Please use /trigger admin on checkpoint 4 (places blocks)"}
execute if score %admin parkour matches 6 as @a[scores={admin=1..}] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run summon marker ~ ~ ~ {Tags:["parkourMarker","parkourCheck4","parkourCheck"]}
execute if score %admin parkour matches 6 as @a[scores={admin=1..}] at @s run forceload add ~ ~ ~ ~
execute if score %admin parkour matches 6 as @a[scores={admin=1..}] at @s run setblock ~ ~-1 ~ minecraft:beacon
execute if score %admin parkour matches 6 as @a[scores={admin=1..}] at @s run fill ~-1 ~-2 ~-1 ~1 ~-2 ~1 minecraft:iron_block
execute if score %admin parkour matches 6 as @a[scores={admin=1..}] at @s run setblock ~ ~ ~ minecraft:light_weighted_pressure_plate

execute if score %admin parkour matches 6 as @a[scores={admin=1..}] run tellraw @s {"bold":false,"color":"gold","text":"Please use /trigger admin on final checkpoint 5 (end point)"}
execute if score %admin parkour matches 7 as @a[scores={admin=1..}] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run summon marker ~ ~ ~ {Tags:["parkourMarker","parkourCheck5","parkourEnd"]}
execute if score %admin parkour matches 7 as @a[scores={admin=1..}] at @s run forceload add ~ ~ ~ ~
execute if score %admin parkour matches 7 as @a[scores={admin=1..}] at @s run setblock ~ ~-2 ~ minecraft:beacon
execute if score %admin parkour matches 7 as @a[scores={admin=1..}] at @s run fill ~-1 ~-3 ~-1 ~1 ~-3 ~1 minecraft:iron_block
execute if score %admin parkour matches 7 as @a[scores={admin=1..}] at @s run setblock ~ ~-1 ~ minecraft:lime_stained_glass
execute if score %admin parkour matches 7 as @a[scores={admin=1..}] at @s run setblock ~ ~ ~ minecraft:light_weighted_pressure_plate

execute if score %admin parkour matches 7 as @a[scores={admin=1..}] run tellraw @s [{"bold":false,"color":"light_purple","text":"Your settings have been saved."}]

# Next admin setting
execute as @a[scores={admin=1..}] run scoreboard players add %admin parkour 1
execute as @a[scores={admin=1..}] run scoreboard players enable @s admin
execute as @a[scores={admin=1..}] run scoreboard players set @s admin 0

# Disable admin and reset %admin when everything is done. 
execute if score %admin parkour matches 8 as @a[scores={admin=1..}] run trigger admin set 0
execute if score %admin parkour matches 8 run scoreboard players set %admin parkour 0
