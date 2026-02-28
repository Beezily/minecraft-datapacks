# Note this is a little different from regualar chest loot because we know for sure if someone opened
# ender chest, that loot is unopened and needs new loot. NOTE THIS IS BONUS LOOT (old chest mechs still apply)
#Particles, sound, set chest, and add loot
playsound entity.armor_stand.break block @a ~ ~ ~ 1 1
particle block{block_state:"minecraft:ender_chest"} ~ ~ ~ 0.6 0.6 0.6 0 50 normal

# random chest orientation
execute store result score %random sg run random value 1..4
execute if score %random sg matches 1 run setblock ~ ~ ~ chest[facing=north]
execute if score %random sg matches 2 run setblock ~ ~ ~ chest[facing=south]
execute if score %random sg matches 3 run setblock ~ ~ ~ chest[facing=east]
execute if score %random sg matches 4 run setblock ~ ~ ~ chest[facing=west]

# Sets a marker here to make sure to replace this chest next iteration
execute align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=minecraft:marker,tag=sgEnder,distance=..0.8,limit=1,sort=nearest] run summon minecraft:marker ~ ~ ~ {Tags:["sgEnder"]}
execute as @e[type=minecraft:marker,tag=sgEnder,distance=..0.8,limit=1,sort=nearest] run scoreboard players operation @s sg = %iteration sg

# generate loot
loot insert ~ ~ ~ loot sg:chests/sg_ender_chest
function sg:scramble/scramble_container
function sg:scramble/scramble_container
