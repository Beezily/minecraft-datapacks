# Summon a crafting table at location (with marker)
# Don't run if on cooldown
execute if score @s craft_cd matches 1.. run scoreboard players operation %temp sg = @s craft_cd
execute if score @s craft_cd matches 1.. run scoreboard players add %temp sg 19
execute if score @s craft_cd matches 1.. run scoreboard players operation %temp sg /= #20 sg
execute if score @s craft_cd matches 1.. run tellraw @s [{"text":"Your crafting table has already been placed! You may create another in ","color":"red"},{"score":{"name":"%temp","objective":"sg"},"color":"gold"},{"text":" seconds.","color":"red"}]
execute if score @s craft_cd matches 1.. run tellraw @s {"color":"gray","text":"Hint: Use /trigger craft on the crafting table you made to get it back faster!"}
execute if score @s craft_cd matches 1.. at @s run playsound block.dispenser.fail master @s ~ ~ ~ 1 1 1
execute if score @s craft_cd matches 1.. run return 0

# Summon new marker and set data (we will preserve the blockstate of chest cuz why not)
execute unless entity @n[tag=sgCraft,distance=..0.8] align xyz positioned ~0.5 ~0.5 ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:["sgCraft"]}
execute as @e[type=minecraft:marker,tag=sgCraft,distance=..0.8,limit=1,sort=nearest] run scoreboard players operation @s sg = %iteration sg

data modify entity @n[tag=sgCraft,distance=..0.8] data.Items set from block ~ ~ ~ Items
execute if block ~ ~ ~ chest[facing=north] run data modify entity @n[tag=sgCraft,distance=..0.8] data.facing set value "north"
execute if block ~ ~ ~ chest[facing=south] run data modify entity @n[tag=sgCraft,distance=..0.8] data.facing set value "south"
execute if block ~ ~ ~ chest[facing=east] run data modify entity @n[tag=sgCraft,distance=..0.8] data.facing set value "east"
execute if block ~ ~ ~ chest[facing=west] run data modify entity @n[tag=sgCraft,distance=..0.8] data.facing set value "west"
execute if block ~ ~ ~ chest[waterlogged=false] run data modify entity @n[tag=sgCraft,distance=..0.8] data.waterlogged set value 0b
execute if block ~ ~ ~ chest[waterlogged=true] run data modify entity @n[tag=sgCraft,distance=..0.8] data.waterlogged set value 1b
execute if block ~ ~ ~ chest[type=single] run data modify entity @n[tag=sgCraft,distance=..0.8] data.type set value "single"
execute if block ~ ~ ~ chest[type=left] run data modify entity @n[tag=sgCraft,distance=..0.8] data.type set value "left"
execute if block ~ ~ ~ chest[type=right] run data modify entity @n[tag=sgCraft,distance=..0.8] data.type set value "right"

# Finally set block once all data has been preserved
setblock ~ ~ ~ crafting_table
tellraw @s {"color":"gray","text":"You have placed a crafting table for 15 seconds."}
playsound minecraft:block.crafter.craft block @a ~ ~ ~ 1 1

# Particles and sound
playsound entity.armor_stand.break block @a ~ ~ ~ 1 1
particle block{block_state:"minecraft:chest"} ~ ~ ~ 0.6 0.6 0.6 0 50 normal

# Set score of new marker (lifetime), and player (cooldown)
scoreboard players set @n[tag=sgCraft,distance=..0.8] craft_cd 300
scoreboard players set @s craft_cd 300