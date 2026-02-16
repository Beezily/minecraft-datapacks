# ---------------------------------------------------
# tropicana-oitq:scripts/respawn
# Runs as the player (@s)
# ---------------------------------------------------

# Random 1..10
execute store result score %r oitq run random value 1..10

# Teleport to one random spawn
execute if score %r oitq matches 1 run tp @s 23 18 29 180 0
execute if score %r oitq matches 2 run tp @s 22 17 1 0 0
execute if score %r oitq matches 3 run tp @s -30 26 18 180 0
execute if score %r oitq matches 4 run tp @s -55 18 4 270 0
execute if score %r oitq matches 5 run tp @s -31 18 17 180 0
execute if score %r oitq matches 6 run tp @s -49 26 -4 270 0
execute if score %r oitq matches 7 run tp @s -23 24 -27 270 0
execute if score %r oitq matches 8 run tp @s 34 22 -42 0 0
execute if score %r oitq matches 9 run tp @s 49 17 7 90 0
execute if score %r oitq matches 10 run tp @s 48 22 -21 90 0

# Put player back into game
gamemode adventure @s

# Brief spawn protection: Resistance V for 2 seconds (40 ticks)
effect give @s minecraft:resistance 2 4 true
