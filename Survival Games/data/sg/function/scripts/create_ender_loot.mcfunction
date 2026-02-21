#Particles, sound, set chest, and add loot
playsound entity.armor_stand.break block @a ~ ~ ~ 1 1
particle block{block_state:"minecraft:ender_chest"} ~ ~ ~ 0.6 0.6 0.6 0 50 normal

# random chest orientation
execute store result score %random sg run random value 1..4
execute if score %random sg matches 0 run setblock ~ ~ ~ chest[facing=north]
execute if score %random sg matches 1 run setblock ~ ~ ~ chest[facing=south]
execute if score %random sg matches 2 run setblock ~ ~ ~ chest[facing=east]
execute if score %random sg matches 3 run setblock ~ ~ ~ chest[facing=west]

# generate loot
loot insert ~ ~ ~ loot sg:chests/sg_chest