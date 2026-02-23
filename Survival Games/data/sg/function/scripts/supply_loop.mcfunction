# Loop for managing supply drop when %timer is between 7200..9600 ticks. Run by the marker that is supposed to drop it
# RUN BY ALL sgSupply MARKERS, AT THEIR POSITIONS
# Returns if not the right sg location
execute if entity @s[tag=sgDrop1] unless score %supply_drop sg matches 1 run return 0
execute if entity @s[tag=sgDrop2] unless score %supply_drop sg matches 2 run return 0
execute if entity @s[tag=sgDrop3] unless score %supply_drop sg matches 3 run return 0
execute if entity @s[tag=sgDrop4] unless score %supply_drop sg matches 4 run return 0

# Tellraw all players that supply drop is happening at location
# Grab marker coords *2 (so .5 becomes an integer), then subtract 1 (= -0.5), then /2
execute if score %timer sg matches 9600 store result score %sdx sg run data get entity @s Pos[0] 2
execute if score %timer sg matches 9600 store result score %sdy sg run data get entity @s Pos[1] 2
execute if score %timer sg matches 9600 store result score %sdz sg run data get entity @s Pos[2] 2
execute if score %timer sg matches 9600 run scoreboard players remove %sdx sg 1
execute if score %timer sg matches 9600 run scoreboard players remove %sdy sg 1
execute if score %timer sg matches 9600 run scoreboard players remove %sdz sg 1
execute if score %timer sg matches 9600 run scoreboard players operation %sdx sg /= #2 sg
execute if score %timer sg matches 9600 run scoreboard players operation %sdy sg /= #2 sg
execute if score %timer sg matches 9600 run scoreboard players operation %sdz sg /= #2 sg
execute if score %timer sg matches 9600 run tellraw @a [{"text":"A supply drop is spawning in 2 minutes at: ","color":"white","bold":true},{"text":"(","color":"white","bold":true},{"score":{"name":"%sdx","objective":"sg"},"color":"white","bold":true},{"text":", ","color":"white","bold":true},{"score":{"name":"%sdy","objective":"sg"},"color":"white","bold":true},{"text":", ","color":"white","bold":true},{"score":{"name":"%sdz","objective":"sg"},"color":"white","bold":true},{"text":")","color":"white","bold":true}]
execute if score %timer sg matches 9600 as @a at @s run playsound entity.shulker.ambient master @s ~ ~ ~ 1 1 1

# Place beacon at self
execute if score %timer sg matches 9600 at @s run setblock ~ ~ ~ minecraft:beacon

# Make fireworks particles and sound at 30 seconds before drop every half second
execute if score %timer sg matches 7800 positioned ~ ~60 ~ run particle minecraft:wax_on ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 7800 positioned ~ ~60 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 7800 positioned ~ ~60 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 7790 positioned ~ ~59 ~ run particle minecraft:wax_off ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 7790 positioned ~ ~59 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 7790 positioned ~ ~59 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 7780 positioned ~ ~58 ~ run particle minecraft:wax_on ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 7780 positioned ~ ~58 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 7780 positioned ~ ~58 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 7770 positioned ~ ~57 ~ run particle minecraft:wax_off ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 7770 positioned ~ ~57 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 7770 positioned ~ ~57 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 7760 positioned ~ ~56 ~ run particle minecraft:wax_on ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 7760 positioned ~ ~56 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 7760 positioned ~ ~56 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 7750 positioned ~ ~55 ~ run particle minecraft:wax_off ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 7750 positioned ~ ~55 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 7750 positioned ~ ~55 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 7740 positioned ~ ~54 ~ run particle minecraft:wax_on ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 7740 positioned ~ ~54 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 7740 positioned ~ ~54 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 7730 positioned ~ ~53 ~ run particle minecraft:wax_off ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 7730 positioned ~ ~53 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 7730 positioned ~ ~53 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 7720 positioned ~ ~52 ~ run particle minecraft:wax_on ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 7720 positioned ~ ~52 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 7720 positioned ~ ~52 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 7710 positioned ~ ~51 ~ run particle minecraft:wax_off ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 7710 positioned ~ ~51 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 7710 positioned ~ ~51 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 7700 positioned ~ ~50 ~ run particle minecraft:wax_on ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 7700 positioned ~ ~50 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 7700 positioned ~ ~50 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 7690 positioned ~ ~49 ~ run particle minecraft:wax_off ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 7690 positioned ~ ~49 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 7690 positioned ~ ~49 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 7680 positioned ~ ~48 ~ run particle minecraft:wax_on ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 7680 positioned ~ ~48 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 7680 positioned ~ ~48 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 7670 positioned ~ ~47 ~ run particle minecraft:wax_off ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 7670 positioned ~ ~47 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 7670 positioned ~ ~47 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 7660 positioned ~ ~46 ~ run particle minecraft:wax_on ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 7660 positioned ~ ~46 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 7660 positioned ~ ~46 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 7650 positioned ~ ~45 ~ run particle minecraft:wax_off ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 7650 positioned ~ ~45 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 7650 positioned ~ ~45 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 7640 positioned ~ ~44 ~ run particle minecraft:wax_on ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 7640 positioned ~ ~44 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 7640 positioned ~ ~44 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 7630 positioned ~ ~43 ~ run particle minecraft:wax_off ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 7630 positioned ~ ~43 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 7630 positioned ~ ~43 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 7620 positioned ~ ~42 ~ run particle minecraft:wax_on ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 7620 positioned ~ ~42 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 7620 positioned ~ ~42 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 7610 positioned ~ ~41 ~ run particle minecraft:wax_off ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 7610 positioned ~ ~41 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 7610 positioned ~ ~41 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 7600 positioned ~ ~40 ~ run particle minecraft:wax_on ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 7600 positioned ~ ~40 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 7600 positioned ~ ~40 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 7590 positioned ~ ~39 ~ run particle minecraft:wax_off ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 7590 positioned ~ ~39 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 7590 positioned ~ ~39 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 7580 positioned ~ ~38 ~ run particle minecraft:wax_on ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 7580 positioned ~ ~38 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 7580 positioned ~ ~38 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 7570 positioned ~ ~37 ~ run particle minecraft:wax_off ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 7570 positioned ~ ~37 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 7570 positioned ~ ~37 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 7560 positioned ~ ~36 ~ run particle minecraft:wax_on ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 7560 positioned ~ ~36 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 7560 positioned ~ ~36 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 7550 positioned ~ ~35 ~ run particle minecraft:wax_off ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 7550 positioned ~ ~35 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 7550 positioned ~ ~35 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 7540 positioned ~ ~34 ~ run particle minecraft:wax_on ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 7540 positioned ~ ~34 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 7540 positioned ~ ~34 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 7530 positioned ~ ~33 ~ run particle minecraft:wax_off ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 7530 positioned ~ ~33 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 7530 positioned ~ ~33 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 7520 positioned ~ ~32 ~ run particle minecraft:wax_on ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 7520 positioned ~ ~32 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 7520 positioned ~ ~32 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 7510 positioned ~ ~31 ~ run particle minecraft:wax_off ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 7510 positioned ~ ~31 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 7510 positioned ~ ~31 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 7500 positioned ~ ~30 ~ run particle minecraft:wax_on ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 7500 positioned ~ ~30 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 7500 positioned ~ ~30 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 7490 positioned ~ ~29 ~ run particle minecraft:wax_off ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 7490 positioned ~ ~29 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 7490 positioned ~ ~29 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 7480 positioned ~ ~28 ~ run particle minecraft:wax_on ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 7480 positioned ~ ~28 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 7480 positioned ~ ~28 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 7470 positioned ~ ~27 ~ run particle minecraft:wax_off ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 7470 positioned ~ ~27 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 7470 positioned ~ ~27 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 7460 positioned ~ ~26 ~ run particle minecraft:wax_on ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 7460 positioned ~ ~26 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 7460 positioned ~ ~26 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 7450 positioned ~ ~25 ~ run particle minecraft:wax_off ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 7450 positioned ~ ~25 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 7450 positioned ~ ~25 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 7440 positioned ~ ~24 ~ run particle minecraft:wax_on ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 7440 positioned ~ ~24 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 7440 positioned ~ ~24 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 7430 positioned ~ ~23 ~ run particle minecraft:wax_off ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 7430 positioned ~ ~23 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 7430 positioned ~ ~23 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 7420 positioned ~ ~22 ~ run particle minecraft:wax_on ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 7420 positioned ~ ~22 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 7420 positioned ~ ~22 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 7410 positioned ~ ~21 ~ run particle minecraft:wax_off ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 7410 positioned ~ ~21 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 7410 positioned ~ ~21 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 7400 positioned ~ ~20 ~ run particle minecraft:wax_on ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 7400 positioned ~ ~20 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 7400 positioned ~ ~20 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 7390 positioned ~ ~19 ~ run particle minecraft:wax_off ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 7390 positioned ~ ~19 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 7390 positioned ~ ~19 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 7380 positioned ~ ~18 ~ run particle minecraft:wax_on ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 7380 positioned ~ ~18 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 7380 positioned ~ ~18 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 7370 positioned ~ ~17 ~ run particle minecraft:wax_off ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 7370 positioned ~ ~17 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 7370 positioned ~ ~17 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 7360 positioned ~ ~16 ~ run particle minecraft:wax_on ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 7360 positioned ~ ~16 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 7360 positioned ~ ~16 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 7350 positioned ~ ~15 ~ run particle minecraft:wax_off ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 7350 positioned ~ ~15 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 7350 positioned ~ ~15 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 7340 positioned ~ ~14 ~ run particle minecraft:wax_on ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 7340 positioned ~ ~14 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 7340 positioned ~ ~14 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 7330 positioned ~ ~13 ~ run particle minecraft:wax_off ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 7330 positioned ~ ~13 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 7330 positioned ~ ~13 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 7320 positioned ~ ~12 ~ run particle minecraft:wax_on ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 7320 positioned ~ ~12 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 7320 positioned ~ ~12 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 7310 positioned ~ ~11 ~ run particle minecraft:wax_off ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 7310 positioned ~ ~11 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 7310 positioned ~ ~11 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 7300 positioned ~ ~10 ~ run particle minecraft:wax_on ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 7300 positioned ~ ~10 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 7300 positioned ~ ~10 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 7290 positioned ~ ~9 ~ run particle minecraft:wax_off ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 7290 positioned ~ ~9 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 7290 positioned ~ ~9 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 7280 positioned ~ ~8 ~ run particle minecraft:wax_on ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 7280 positioned ~ ~8 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 7280 positioned ~ ~8 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 7270 positioned ~ ~7 ~ run particle minecraft:wax_off ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 7270 positioned ~ ~7 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 7270 positioned ~ ~7 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 7260 positioned ~ ~6 ~ run particle minecraft:wax_on ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 7260 positioned ~ ~6 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 7260 positioned ~ ~6 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 7250 positioned ~ ~5 ~ run particle minecraft:wax_off ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 7250 positioned ~ ~5 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 7250 positioned ~ ~5 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 7240 positioned ~ ~4 ~ run particle minecraft:wax_on ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 7240 positioned ~ ~4 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 7240 positioned ~ ~4 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 7230 positioned ~ ~3 ~ run particle minecraft:wax_off ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 7230 positioned ~ ~3 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 7230 positioned ~ ~3 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 7220 positioned ~ ~2 ~ run particle minecraft:wax_on ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 7220 positioned ~ ~2 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 7220 positioned ~ ~2 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

execute if score %timer sg matches 7210 positioned ~ ~1 ~ run particle minecraft:wax_off ~ ~ ~ 0 0 0 15 24
execute if score %timer sg matches 7210 positioned ~ ~1 ~ run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 7210 positioned ~ ~1 ~ run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~

# Place chest at location with random loot from sg_supply_drop (and x2 loot for normal chest), also bigger firework
execute if score %timer sg matches 7200 run setblock ~ ~ ~ minecraft:chest
execute if score %timer sg matches 7200 run loot insert ~ ~ ~ loot sg:chests/sg_supply_drop
execute if score %timer sg matches 7200 run loot insert ~ ~ ~ loot sg:chests/sg_chest
execute if score %timer sg matches 7200 run tellraw @a {"text":"The supply drop has spawned!","color":"white","bold":true}
execute if score %timer sg matches 7200 as @a at @s run playsound minecraft:entity.breeze.shoot master @s ~ ~ ~ 1 1 1
execute if score %timer sg matches 7200 run playsound minecraft:block.anvil.use master @a ~ ~ ~ 1 1
execute if score %timer sg matches 7200 run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
execute if score %timer sg matches 7200 run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~
execute if score %timer sg matches 7200 run particle minecraft:firework ~ ~-1 ~ 0.8 0.8 0.8 0.3 80

