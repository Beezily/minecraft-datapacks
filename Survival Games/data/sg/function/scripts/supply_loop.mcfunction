# Loop for managing supply drop when %timer is between 3600..6000 ticks. Run by the marker that is supposed to drop it
# RUN BY ALL sgSupply MARKERS, AT THEIR POSITIONS
# Returns if not the right sg location
execute if entity @s[tag=sgDrop1] unless score %supply_drop sg matches 1 run return 0
execute if entity @s[tag=sgDrop2] unless score %supply_drop sg matches 2 run return 0
execute if entity @s[tag=sgDrop3] unless score %supply_drop sg matches 3 run return 0
execute if entity @s[tag=sgDrop4] unless score %supply_drop sg matches 4 run return 0

# Tellraw all players that supply drop is happening at location
# Grab marker coords *2 (so .5 becomes an integer), then subtract 1 (= -0.5), then /2
execute if score %timer sg matches 6000 store result score %sdx sg run data get entity @s Pos[0] 2
execute if score %timer sg matches 6000 store result score %sdy sg run data get entity @s Pos[1] 2
execute if score %timer sg matches 6000 store result score %sdz sg run data get entity @s Pos[2] 2
execute if score %timer sg matches 6000 run scoreboard players remove %sdx sg 1
execute if score %timer sg matches 6000 run scoreboard players remove %sdy sg 1
execute if score %timer sg matches 6000 run scoreboard players remove %sdz sg 1
execute if score %timer sg matches 6000 run scoreboard players operation %sdx sg /= #2 sg
execute if score %timer sg matches 6000 run scoreboard players operation %sdy sg /= #2 sg
execute if score %timer sg matches 6000 run scoreboard players operation %sdz sg /= #2 sg
execute if score %timer sg matches 6000 run tellraw @a [{"text":"A supply drop is spawning in 2 minutes at: ","color":"white","bold":true},{"text":"(","color":"white","bold":true},{"score":{"name":"%sdx","objective":"sg"},"color":"white","bold":true},{"text":", ","color":"white","bold":true},{"score":{"name":"%sdy","objective":"sg"},"color":"white","bold":true},{"text":", ","color":"white","bold":true},{"score":{"name":"%sdz","objective":"sg"},"color":"white","bold":true},{"text":")","color":"white","bold":true}]
execute if score %timer sg matches 6000 as @a at @s run playsound entity.shulker.ambient master @s ~ ~ ~ 1 1 1

# Place beacon at self
execute if score %timer sg matches 6000 at @s run setblock ~ ~ ~ minecraft:beacon

# Make fireworks particles and sound at 30 seconds before drop every half second
execute if score %timer sg matches 4200 positioned ~ ~60 ~ run particle minecraft:wax_on ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 4200 positioned ~ ~60 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 4200 positioned ~ ~60 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 4190 positioned ~ ~59 ~ run particle minecraft:wax_off ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 4190 positioned ~ ~59 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 4190 positioned ~ ~59 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 4180 positioned ~ ~58 ~ run particle minecraft:wax_on ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 4180 positioned ~ ~58 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 4180 positioned ~ ~58 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 4170 positioned ~ ~57 ~ run particle minecraft:wax_off ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 4170 positioned ~ ~57 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 4170 positioned ~ ~57 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 4160 positioned ~ ~56 ~ run particle minecraft:wax_on ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 4160 positioned ~ ~56 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 4160 positioned ~ ~56 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 4150 positioned ~ ~55 ~ run particle minecraft:wax_off ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 4150 positioned ~ ~55 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 4150 positioned ~ ~55 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 4140 positioned ~ ~54 ~ run particle minecraft:wax_on ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 4140 positioned ~ ~54 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 4140 positioned ~ ~54 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 4130 positioned ~ ~53 ~ run particle minecraft:wax_off ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 4130 positioned ~ ~53 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 4130 positioned ~ ~53 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 4120 positioned ~ ~52 ~ run particle minecraft:wax_on ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 4120 positioned ~ ~52 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 4120 positioned ~ ~52 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 4110 positioned ~ ~51 ~ run particle minecraft:wax_off ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 4110 positioned ~ ~51 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 4110 positioned ~ ~51 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 4100 positioned ~ ~50 ~ run particle minecraft:wax_on ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 4100 positioned ~ ~50 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 4100 positioned ~ ~50 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 4090 positioned ~ ~49 ~ run particle minecraft:wax_off ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 4090 positioned ~ ~49 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 4090 positioned ~ ~49 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 4080 positioned ~ ~48 ~ run particle minecraft:wax_on ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 4080 positioned ~ ~48 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 4080 positioned ~ ~48 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 4070 positioned ~ ~47 ~ run particle minecraft:wax_off ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 4070 positioned ~ ~47 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 4070 positioned ~ ~47 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 4060 positioned ~ ~46 ~ run particle minecraft:wax_on ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 4060 positioned ~ ~46 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 4060 positioned ~ ~46 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 4050 positioned ~ ~45 ~ run particle minecraft:wax_off ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 4050 positioned ~ ~45 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 4050 positioned ~ ~45 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 4040 positioned ~ ~44 ~ run particle minecraft:wax_on ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 4040 positioned ~ ~44 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 4040 positioned ~ ~44 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 4030 positioned ~ ~43 ~ run particle minecraft:wax_off ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 4030 positioned ~ ~43 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 4030 positioned ~ ~43 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 4020 positioned ~ ~42 ~ run particle minecraft:wax_on ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 4020 positioned ~ ~42 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 4020 positioned ~ ~42 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 4010 positioned ~ ~41 ~ run particle minecraft:wax_off ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 4010 positioned ~ ~41 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 4010 positioned ~ ~41 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 4000 positioned ~ ~40 ~ run particle minecraft:wax_on ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 4000 positioned ~ ~40 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 4000 positioned ~ ~40 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 3990 positioned ~ ~39 ~ run particle minecraft:wax_off ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 3990 positioned ~ ~39 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 3990 positioned ~ ~39 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 3980 positioned ~ ~38 ~ run particle minecraft:wax_on ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 3980 positioned ~ ~38 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 3980 positioned ~ ~38 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 3970 positioned ~ ~37 ~ run particle minecraft:wax_off ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 3970 positioned ~ ~37 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 3970 positioned ~ ~37 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 3960 positioned ~ ~36 ~ run particle minecraft:wax_on ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 3960 positioned ~ ~36 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 3960 positioned ~ ~36 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 3950 positioned ~ ~35 ~ run particle minecraft:wax_off ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 3950 positioned ~ ~35 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 3950 positioned ~ ~35 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 3940 positioned ~ ~34 ~ run particle minecraft:wax_on ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 3940 positioned ~ ~34 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 3940 positioned ~ ~34 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 3930 positioned ~ ~33 ~ run particle minecraft:wax_off ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 3930 positioned ~ ~33 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 3930 positioned ~ ~33 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 3920 positioned ~ ~32 ~ run particle minecraft:wax_on ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 3920 positioned ~ ~32 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 3920 positioned ~ ~32 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 3910 positioned ~ ~31 ~ run particle minecraft:wax_off ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 3910 positioned ~ ~31 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 3910 positioned ~ ~31 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 3900 positioned ~ ~30 ~ run particle minecraft:wax_on ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 3900 positioned ~ ~30 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 3900 positioned ~ ~30 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 3890 positioned ~ ~29 ~ run particle minecraft:wax_off ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 3890 positioned ~ ~29 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 3890 positioned ~ ~29 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 3880 positioned ~ ~28 ~ run particle minecraft:wax_on ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 3880 positioned ~ ~28 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 3880 positioned ~ ~28 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 3870 positioned ~ ~27 ~ run particle minecraft:wax_off ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 3870 positioned ~ ~27 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 3870 positioned ~ ~27 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 3860 positioned ~ ~26 ~ run particle minecraft:wax_on ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 3860 positioned ~ ~26 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 3860 positioned ~ ~26 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 3850 positioned ~ ~25 ~ run particle minecraft:wax_off ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 3850 positioned ~ ~25 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 3850 positioned ~ ~25 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 3840 positioned ~ ~24 ~ run particle minecraft:wax_on ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 3840 positioned ~ ~24 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 3840 positioned ~ ~24 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 3830 positioned ~ ~23 ~ run particle minecraft:wax_off ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 3830 positioned ~ ~23 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 3830 positioned ~ ~23 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 3820 positioned ~ ~22 ~ run particle minecraft:wax_on ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 3820 positioned ~ ~22 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 3820 positioned ~ ~22 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 3810 positioned ~ ~21 ~ run particle minecraft:wax_off ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 3810 positioned ~ ~21 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 3810 positioned ~ ~21 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 3800 positioned ~ ~20 ~ run particle minecraft:wax_on ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 3800 positioned ~ ~20 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 3800 positioned ~ ~20 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 3790 positioned ~ ~19 ~ run particle minecraft:wax_off ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 3790 positioned ~ ~19 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 3790 positioned ~ ~19 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 3780 positioned ~ ~18 ~ run particle minecraft:wax_on ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 3780 positioned ~ ~18 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 3780 positioned ~ ~18 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 3770 positioned ~ ~17 ~ run particle minecraft:wax_off ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 3770 positioned ~ ~17 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 3770 positioned ~ ~17 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 3760 positioned ~ ~16 ~ run particle minecraft:wax_on ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 3760 positioned ~ ~16 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 3760 positioned ~ ~16 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 3750 positioned ~ ~15 ~ run particle minecraft:wax_off ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 3750 positioned ~ ~15 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 3750 positioned ~ ~15 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 3740 positioned ~ ~14 ~ run particle minecraft:wax_on ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 3740 positioned ~ ~14 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 3740 positioned ~ ~14 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 3730 positioned ~ ~13 ~ run particle minecraft:wax_off ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 3730 positioned ~ ~13 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 3730 positioned ~ ~13 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 3720 positioned ~ ~12 ~ run particle minecraft:wax_on ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 3720 positioned ~ ~12 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 3720 positioned ~ ~12 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 3710 positioned ~ ~11 ~ run particle minecraft:wax_off ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 3710 positioned ~ ~11 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 3710 positioned ~ ~11 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 3700 positioned ~ ~10 ~ run particle minecraft:wax_on ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 3700 positioned ~ ~10 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 3700 positioned ~ ~10 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 3690 positioned ~ ~9 ~ run particle minecraft:wax_off ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 3690 positioned ~ ~9 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 3690 positioned ~ ~9 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 3680 positioned ~ ~8 ~ run particle minecraft:wax_on ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 3680 positioned ~ ~8 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 3680 positioned ~ ~8 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 3670 positioned ~ ~7 ~ run particle minecraft:wax_off ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 3670 positioned ~ ~7 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 3670 positioned ~ ~7 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 3660 positioned ~ ~6 ~ run particle minecraft:wax_on ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 3660 positioned ~ ~6 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 3660 positioned ~ ~6 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 3650 positioned ~ ~5 ~ run particle minecraft:wax_off ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 3650 positioned ~ ~5 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 3650 positioned ~ ~5 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 3640 positioned ~ ~4 ~ run particle minecraft:wax_on ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 3640 positioned ~ ~4 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 3640 positioned ~ ~4 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 3630 positioned ~ ~3 ~ run particle minecraft:wax_off ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 3630 positioned ~ ~3 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 3630 positioned ~ ~3 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 3620 positioned ~ ~2 ~ run particle minecraft:wax_on ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 3620 positioned ~ ~2 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 3620 positioned ~ ~2 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 3610 positioned ~ ~1 ~ run particle minecraft:wax_off ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 3610 positioned ~ ~1 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 3610 positioned ~ ~1 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

# Place chest at location with random loot from sg_supply_drop (and x2 loot for normal chest), also bigger firework
execute if score %timer sg matches 3600 run setblock ~ ~ ~ minecraft:chest
execute if score %timer sg matches 3600 run loot insert ~ ~ ~ loot sg:chests/sg_supply_drop
execute if score %timer sg matches 3600 run loot insert ~ ~ ~ loot sg:chests/sg_chest
execute if score %timer sg matches 3600 run tellraw @a {"text":"The supply drop has spawned!","color":"white","bold":true}
execute if score %timer sg matches 3600 as @a at @s run playsound minecraft:entity.breeze.shoot master @s ~ ~ ~ 1 1 1
execute if score %timer sg matches 3600 run playsound minecraft:block.anvil.use master @a ~ ~ ~ 1 1
execute if score %timer sg matches 3600 run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 3600 run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~
execute if score %timer sg matches 3600 run particle minecraft:firework ~ ~-1 ~ 0.8 0.8 0.8 0.3 80
