# Pick a random alive player, roll random offsets + lifetime + variant,
# then spawn/move the firework (macro function uses sg:fw storage).

execute unless entity @a[gamemode=adventure] run return 0

# random lifetime 20..30
execute store result score %fw_lt sg run random value 20..30

# random offset around player
execute store result score %fw_dx sg run random value -7..7
execute store result score %fw_dz sg run random value -7..7
execute store result score %fw_dy sg run random value 0..2

# pick which “pretty style” variant (0..3)
execute store result score %fw_var sg run random value 0..3

# pack args into storage for macro lines
data modify storage sg:fw args set value {}
execute store result storage sg:fw lt int 1 run scoreboard players get %fw_lt sg
execute store result storage sg:fw dx int 1 run scoreboard players get %fw_dx sg
execute store result storage sg:fw dy int 1 run scoreboard players get %fw_dy sg
execute store result storage sg:fw dz int 1 run scoreboard players get %fw_dz sg

# run as random alive player at their position
execute as @r[gamemode=adventure] at @s run function sg:end/fireworks_spawn with storage sg:fw