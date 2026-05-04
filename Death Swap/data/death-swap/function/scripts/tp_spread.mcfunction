# run by random tag=dsSpot marker and then kills self
execute if entity @s[type=marker,tag=dsSpotRed] if score %valid ds matches 1 if entity @a[team=Red] store success score %valid ds run spreadplayers ~ ~ 0 50 true @a[team=Red]
execute if entity @s[type=marker,tag=dsSpotYellow] if score %valid ds matches 1 if entity @a[team=Yellow] store success score %valid ds run spreadplayers ~ ~ 0 50 true @a[team=Yellow]
execute if entity @s[type=marker,tag=dsSpotBlue] if score %valid ds matches 1 if entity @a[team=Blue] store success score %valid ds run spreadplayers ~ ~ 0 50 true @a[team=Blue]
execute if entity @s[type=marker,tag=dsSpotGreen] if score %valid ds matches 1 if entity @a[team=Green] store success score %valid ds run spreadplayers ~ ~ 0 50 true @a[team=Green]
execute if entity @s[type=marker,tag=dsSpotAqua] if score %valid ds matches 1 if entity @a[team=Aqua] store success score %valid ds run spreadplayers ~ ~ 0 50 true @a[team=Aqua]
execute if entity @s[type=marker,tag=dsSpotPurple] if score %valid ds matches 1 if entity @a[team=Purple] store success score %valid ds run spreadplayers ~ ~ 0 500 true @a[team=Purple]

kill @s