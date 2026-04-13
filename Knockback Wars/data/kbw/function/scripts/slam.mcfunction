# Slam mechanics
attribute @s gravity base set 0.08
tag @s remove pyroSlamming
execute unless entity @s[tag=pyroSlamLegit] run return 0

tag @s remove pyroSlamLegit
summon creeper ~ ~ ~ {Silent:1b,Invulnerable:1b,NoAI:1b,powered:0b,ExplosionRadius:4b,Fuse:0,ignited:1b,attributes:[{id:"minecraft:attack_knockback",base:5}]}
particle flash{color:[1.000,1.000,1.000,1.00]} ~ ~ ~ 0 0 0 0 0 normal
particle minecraft:flame ~ ~ ~ 0.5 0.5 0.5 0.5 50
playsound minecraft:entity.zombie.attack_iron_door master @a ~ ~ ~ 1 0
