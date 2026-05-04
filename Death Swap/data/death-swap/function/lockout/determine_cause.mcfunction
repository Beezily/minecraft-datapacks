# Determines the cause of death and updates the counter and gives points
# Return 0 if we know that nothing needs to be updated
# Run by all players that died

# If neither generic nor source cause can be used, stop here.
execute if score @s ds_cause_generic matches -1 if score @s ds_cause_source matches -1 run tellraw @s {"bold":true,"shadow_color":-16733696,"text":"You did not die in a unique way, so you have respawned!"}
execute if score @s ds_cause_generic matches -1 if score @s ds_cause_source matches -1 run return 0

# Adds one to the generic cause.
# Generic cause has priority over source cause.
execute if score @s ds_cause_generic matches 1 run scoreboard players add %arrow ds_cause_generic 1
execute if score @s ds_cause_generic matches 2 run scoreboard players add %trident ds_cause_generic 1
execute if score @s ds_cause_generic matches 3 run scoreboard players add %fireworks ds_cause_generic 1
execute if score @s ds_cause_generic matches 4 run scoreboard players add %fireball ds_cause_generic 1
execute if score @s ds_cause_generic matches 5 run scoreboard players add %lava ds_cause_generic 1
execute if score @s ds_cause_generic matches 6 run scoreboard players add %fire ds_cause_generic 1
execute if score @s ds_cause_generic matches 7 run scoreboard players add %fall ds_cause_generic 1
execute if score @s ds_cause_generic matches 8 run scoreboard players add %void ds_cause_generic 1
execute if score @s ds_cause_generic matches 9 run scoreboard players add %suffocation ds_cause_generic 1
execute if score @s ds_cause_generic matches 10 run scoreboard players add %drowning ds_cause_generic 1
execute if score @s ds_cause_generic matches 11 run scoreboard players add %cactus ds_cause_generic 1
execute if score @s ds_cause_generic matches 12 run scoreboard players add %freezing ds_cause_generic 1
execute if score @s ds_cause_generic matches 13 run scoreboard players add %explosion ds_cause_generic 1
execute if score @s ds_cause_generic matches 14 run scoreboard players add %stalagmite ds_cause_generic 1
execute if score @s ds_cause_generic matches 15 run scoreboard players add %falling_stalactite ds_cause_generic 1
execute if score @s ds_cause_generic matches 16 run scoreboard players add %entity_cramming ds_cause_generic 1
execute if score @s ds_cause_generic matches 17 run scoreboard players add %falling_anvil ds_cause_generic 1
execute if score @s ds_cause_generic matches 18 run scoreboard players add %thorns ds_cause_generic 1
execute if score @s ds_cause_generic matches 19 run scoreboard players add %magic ds_cause_generic 1
execute if score @s ds_cause_generic matches 20 run scoreboard players add %lightning ds_cause_generic 1
execute if score @s ds_cause_generic matches 21 run scoreboard players add %starving ds_cause_generic 1
execute if score @s ds_cause_generic matches 22 run scoreboard players add %dragon_breath ds_cause_generic 1
execute if score @s ds_cause_generic matches 23 run scoreboard players add %wither_skull ds_cause_generic 1

# Adds one to the source cause if cannot add one to the generic cause.
# Because the main function resets generic/source causes to -1, source fallback only needs to check generic == -1.
execute if score @s ds_cause_generic matches -1 if score @s ds_cause_source matches 1 run scoreboard players add %player ds_cause_source 1
execute if score @s ds_cause_generic matches -1 if score @s ds_cause_source matches 2 run scoreboard players add %blaze ds_cause_source 1
execute if score @s ds_cause_generic matches -1 if score @s ds_cause_source matches 3 run scoreboard players add %bogged ds_cause_source 1
execute if score @s ds_cause_generic matches -1 if score @s ds_cause_source matches 4 run scoreboard players add %breeze ds_cause_source 1
execute if score @s ds_cause_generic matches -1 if score @s ds_cause_source matches 5 run scoreboard players add %creaking ds_cause_source 1
execute if score @s ds_cause_generic matches -1 if score @s ds_cause_source matches 6 run scoreboard players add %creeper ds_cause_source 1
execute if score @s ds_cause_generic matches -1 if score @s ds_cause_source matches 7 run scoreboard players add %elder_guardian ds_cause_source 1
execute if score @s ds_cause_generic matches -1 if score @s ds_cause_source matches 8 run scoreboard players add %endermite ds_cause_source 1
execute if score @s ds_cause_generic matches -1 if score @s ds_cause_source matches 9 run scoreboard players add %evoker ds_cause_source 1
execute if score @s ds_cause_generic matches -1 if score @s ds_cause_source matches 10 run scoreboard players add %ghast ds_cause_source 1
execute if score @s ds_cause_generic matches -1 if score @s ds_cause_source matches 11 run scoreboard players add %guardian ds_cause_source 1
execute if score @s ds_cause_generic matches -1 if score @s ds_cause_source matches 12 run scoreboard players add %hoglin ds_cause_source 1
execute if score @s ds_cause_generic matches -1 if score @s ds_cause_source matches 13 run scoreboard players add %husk ds_cause_source 1
execute if score @s ds_cause_generic matches -1 if score @s ds_cause_source matches 14 run scoreboard players add %magma_cube ds_cause_source 1
execute if score @s ds_cause_generic matches -1 if score @s ds_cause_source matches 15 run scoreboard players add %parched ds_cause_source 1
execute if score @s ds_cause_generic matches -1 if score @s ds_cause_source matches 16 run scoreboard players add %phantom ds_cause_source 1
execute if score @s ds_cause_generic matches -1 if score @s ds_cause_source matches 17 run scoreboard players add %piglin_brute ds_cause_source 1
execute if score @s ds_cause_generic matches -1 if score @s ds_cause_source matches 18 run scoreboard players add %pillager ds_cause_source 1
execute if score @s ds_cause_generic matches -1 if score @s ds_cause_source matches 19 run scoreboard players add %ravager ds_cause_source 1
execute if score @s ds_cause_generic matches -1 if score @s ds_cause_source matches 20 run scoreboard players add %shulker ds_cause_source 1
execute if score @s ds_cause_generic matches -1 if score @s ds_cause_source matches 21 run scoreboard players add %silverfish ds_cause_source 1
execute if score @s ds_cause_generic matches -1 if score @s ds_cause_source matches 22 run scoreboard players add %skeleton ds_cause_source 1
execute if score @s ds_cause_generic matches -1 if score @s ds_cause_source matches 23 run scoreboard players add %slime ds_cause_source 1
execute if score @s ds_cause_generic matches -1 if score @s ds_cause_source matches 24 run scoreboard players add %stray ds_cause_source 1
execute if score @s ds_cause_generic matches -1 if score @s ds_cause_source matches 25 run scoreboard players add %vex ds_cause_source 1
execute if score @s ds_cause_generic matches -1 if score @s ds_cause_source matches 26 run scoreboard players add %vindicator ds_cause_source 1
execute if score @s ds_cause_generic matches -1 if score @s ds_cause_source matches 27 run scoreboard players add %warden ds_cause_source 1
execute if score @s ds_cause_generic matches -1 if score @s ds_cause_source matches 28 run scoreboard players add %bee ds_cause_source 1
execute if score @s ds_cause_generic matches -1 if score @s ds_cause_source matches 29 run scoreboard players add %cave_spider ds_cause_source 1
execute if score @s ds_cause_generic matches -1 if score @s ds_cause_source matches 30 run scoreboard players add %dolphin ds_cause_source 1
execute if score @s ds_cause_generic matches -1 if score @s ds_cause_source matches 31 run scoreboard players add %drowned ds_cause_source 1
execute if score @s ds_cause_generic matches -1 if score @s ds_cause_source matches 32 run scoreboard players add %enderman ds_cause_source 1
execute if score @s ds_cause_generic matches -1 if score @s ds_cause_source matches 33 run scoreboard players add %fox ds_cause_source 1
execute if score @s ds_cause_generic matches -1 if score @s ds_cause_source matches 34 run scoreboard players add %goat ds_cause_source 1
execute if score @s ds_cause_generic matches -1 if score @s ds_cause_source matches 35 run scoreboard players add %iron_golem ds_cause_source 1
execute if score @s ds_cause_generic matches -1 if score @s ds_cause_source matches 36 run scoreboard players add %llama ds_cause_source 1
execute if score @s ds_cause_generic matches -1 if score @s ds_cause_source matches 37 run scoreboard players add %nautilus ds_cause_source 1
execute if score @s ds_cause_generic matches -1 if score @s ds_cause_source matches 38 run scoreboard players add %panda ds_cause_source 1
execute if score @s ds_cause_generic matches -1 if score @s ds_cause_source matches 39 run scoreboard players add %piglin ds_cause_source 1
execute if score @s ds_cause_generic matches -1 if score @s ds_cause_source matches 40 run scoreboard players add %polar_bear ds_cause_source 1
execute if score @s ds_cause_generic matches -1 if score @s ds_cause_source matches 41 run scoreboard players add %pufferfish ds_cause_source 1
execute if score @s ds_cause_generic matches -1 if score @s ds_cause_source matches 42 run scoreboard players add %spider ds_cause_source 1
execute if score @s ds_cause_generic matches -1 if score @s ds_cause_source matches 43 run scoreboard players add %trader_llama ds_cause_source 1
execute if score @s ds_cause_generic matches -1 if score @s ds_cause_source matches 44 run scoreboard players add %wolf ds_cause_source 1
execute if score @s ds_cause_generic matches -1 if score @s ds_cause_source matches 45 run scoreboard players add %zombie_nautilus ds_cause_source 1
execute if score @s ds_cause_generic matches -1 if score @s ds_cause_source matches 46 run scoreboard players add %zombified_piglin ds_cause_source 1
execute if score @s ds_cause_generic matches -1 if score @s ds_cause_source matches 47 run scoreboard players add %zombie ds_cause_source 1
execute if score @s ds_cause_generic matches -1 if score @s ds_cause_source matches 48 run scoreboard players add %zombie_villager ds_cause_source 1
execute if score @s ds_cause_generic matches -1 if score @s ds_cause_source matches 49 run scoreboard players add %wither_skeleton ds_cause_source 1
execute if score @s ds_cause_generic matches -1 if score @s ds_cause_source matches 50 run scoreboard players add %witch ds_cause_source 1
execute if score @s ds_cause_generic matches -1 if score @s ds_cause_source matches 51 run scoreboard players add %wither ds_cause_source 1
execute if score @s ds_cause_generic matches -1 if score @s ds_cause_source matches 52 run scoreboard players add %ender_dragon ds_cause_source 1
execute if score @s ds_cause_generic matches -1 if score @s ds_cause_source matches 53 run scoreboard players add %zoglin ds_cause_source 1
execute if score @s ds_cause_generic matches -1 if score @s ds_cause_source matches 54 run scoreboard players add %camel_husk ds_cause_source 1

# Finds the player that killed them and give them a point.
function death-swap:lockout/find_lockout_killer

# Clears inventory because they died.
clear @s
