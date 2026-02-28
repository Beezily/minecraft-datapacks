# Restores the chest from the crafting table data
# Do nothing if there is nothing to restore
execute unless entity @n[tag=sgCraft,distance=..0.8] run tellraw @s {"color":"red","text":"This crafting table was never a chest!"}
execute unless entity @n[tag=sgCraft,distance=..0.8] at @s run playsound block.dispenser.fail master @s ~ ~ ~ 1 1 1
execute unless entity @n[tag=sgCraft,distance=..0.8] run return 0

# Restore all blockstates to the chest
execute if data entity @n[tag=sgCraft,distance=..0.8] {data:{facing:"north",waterlogged:0b,type:"single"}} run setblock ~ ~ ~ chest[facing=north,waterlogged=false,type=single]
execute if data entity @n[tag=sgCraft,distance=..0.8] {data:{facing:"north",waterlogged:0b,type:"left"}} run setblock ~ ~ ~ chest[facing=north,waterlogged=false,type=left]
execute if data entity @n[tag=sgCraft,distance=..0.8] {data:{facing:"north",waterlogged:0b,type:"right"}} run setblock ~ ~ ~ chest[facing=north,waterlogged=false,type=right]
execute if data entity @n[tag=sgCraft,distance=..0.8] {data:{facing:"north",waterlogged:1b,type:"single"}} run setblock ~ ~ ~ chest[facing=north,waterlogged=true,type=single]
execute if data entity @n[tag=sgCraft,distance=..0.8] {data:{facing:"north",waterlogged:1b,type:"left"}} run setblock ~ ~ ~ chest[facing=north,waterlogged=true,type=left]
execute if data entity @n[tag=sgCraft,distance=..0.8] {data:{facing:"north",waterlogged:1b,type:"right"}} run setblock ~ ~ ~ chest[facing=north,waterlogged=true,type=right]

execute if data entity @n[tag=sgCraft,distance=..0.8] {data:{facing:"south",waterlogged:0b,type:"single"}} run setblock ~ ~ ~ chest[facing=south,waterlogged=false,type=single]
execute if data entity @n[tag=sgCraft,distance=..0.8] {data:{facing:"south",waterlogged:0b,type:"left"}} run setblock ~ ~ ~ chest[facing=south,waterlogged=false,type=left]
execute if data entity @n[tag=sgCraft,distance=..0.8] {data:{facing:"south",waterlogged:0b,type:"right"}} run setblock ~ ~ ~ chest[facing=south,waterlogged=false,type=right]
execute if data entity @n[tag=sgCraft,distance=..0.8] {data:{facing:"south",waterlogged:1b,type:"single"}} run setblock ~ ~ ~ chest[facing=south,waterlogged=true,type=single]
execute if data entity @n[tag=sgCraft,distance=..0.8] {data:{facing:"south",waterlogged:1b,type:"left"}} run setblock ~ ~ ~ chest[facing=south,waterlogged=true,type=left]
execute if data entity @n[tag=sgCraft,distance=..0.8] {data:{facing:"south",waterlogged:1b,type:"right"}} run setblock ~ ~ ~ chest[facing=south,waterlogged=true,type=right]

execute if data entity @n[tag=sgCraft,distance=..0.8] {data:{facing:"east",waterlogged:0b,type:"single"}} run setblock ~ ~ ~ chest[facing=east,waterlogged=false,type=single]
execute if data entity @n[tag=sgCraft,distance=..0.8] {data:{facing:"east",waterlogged:0b,type:"left"}} run setblock ~ ~ ~ chest[facing=east,waterlogged=false,type=left]
execute if data entity @n[tag=sgCraft,distance=..0.8] {data:{facing:"east",waterlogged:0b,type:"right"}} run setblock ~ ~ ~ chest[facing=east,waterlogged=false,type=right]
execute if data entity @n[tag=sgCraft,distance=..0.8] {data:{facing:"east",waterlogged:1b,type:"single"}} run setblock ~ ~ ~ chest[facing=east,waterlogged=true,type=single]
execute if data entity @n[tag=sgCraft,distance=..0.8] {data:{facing:"east",waterlogged:1b,type:"left"}} run setblock ~ ~ ~ chest[facing=east,waterlogged=true,type=left]
execute if data entity @n[tag=sgCraft,distance=..0.8] {data:{facing:"east",waterlogged:1b,type:"right"}} run setblock ~ ~ ~ chest[facing=east,waterlogged=true,type=right]

execute if data entity @n[tag=sgCraft,distance=..0.8] {data:{facing:"west",waterlogged:0b,type:"single"}} run setblock ~ ~ ~ chest[facing=west,waterlogged=false,type=single]
execute if data entity @n[tag=sgCraft,distance=..0.8] {data:{facing:"west",waterlogged:0b,type:"left"}} run setblock ~ ~ ~ chest[facing=west,waterlogged=false,type=left]
execute if data entity @n[tag=sgCraft,distance=..0.8] {data:{facing:"west",waterlogged:0b,type:"right"}} run setblock ~ ~ ~ chest[facing=west,waterlogged=false,type=right]
execute if data entity @n[tag=sgCraft,distance=..0.8] {data:{facing:"west",waterlogged:1b,type:"single"}} run setblock ~ ~ ~ chest[facing=west,waterlogged=true,type=single]
execute if data entity @n[tag=sgCraft,distance=..0.8] {data:{facing:"west",waterlogged:1b,type:"left"}} run setblock ~ ~ ~ chest[facing=west,waterlogged=true,type=left]
execute if data entity @n[tag=sgCraft,distance=..0.8] {data:{facing:"west",waterlogged:1b,type:"right"}} run setblock ~ ~ ~ chest[facing=west,waterlogged=true,type=right]

# Restore items to chest
data modify block ~ ~ ~ Items set from entity @n[tag=sgCraft,distance=..0.8] data.Items

# Particles and sound
playsound entity.armor_stand.break block @a ~ ~ ~ 1 1
particle block{block_state:"minecraft:crafting_table"} ~ ~ ~ 0.6 0.6 0.6 0 50 normal

# Kill marker now that everything has been restored
kill @n[tag=sgCraft,distance=..0.8]

# Tellraw (Will not be seen if run by system)
execute unless entity @s[type=player] run return 0
tellraw @s {"color":"gray","text":"You have picked back up the crafting table."}
scoreboard players set @s craft_cd 0
