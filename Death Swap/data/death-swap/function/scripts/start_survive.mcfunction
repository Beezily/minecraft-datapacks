# Bossbar set
bossbar set ds:timer name {"text":"SURVIVE","color":red,"bold":true}
bossbar set ds:timer color red
bossbar set ds:timer max 600
bossbar set ds:timer value 600
bossbar set ds:timer players @a
bossbar set ds:timer visible true

# Set score for backwards counting
scoreboard players set %timer ds -1

# Playsound here after the tp
execute as @a at @s run playsound minecraft:entity.ravager.roar master @s ~ ~ ~ 1 1 1

# Disables team tp
execute as @a run trigger team_tp set 0

# Optional obsidian nerf
execute if score %nerf_obsidian ds matches 1 as @a at @s positioned ~ ~ ~ if block ~ ~ ~ obsidian run tellraw @s {"text":"Obsidian trapping has been nerfed. The block has been broken for you!","bold":false,"color":light_purple}
execute if score %nerf_obsidian ds matches 1 as @a at @s positioned ~ ~ ~ if block ~ ~ ~ obsidian run playsound block.stone.break block @a[distance=..15] ~ ~ ~ 1 1
execute if score %nerf_obsidian ds matches 1 as @a at @s positioned ~ ~ ~ if block ~ ~ ~ obsidian run particle block{block_state:"minecraft:obsidian"} ~ ~ ~ 0.5 0.5 0.5 1 50 normal
execute if score %nerf_obsidian ds matches 1 as @a at @s positioned ~ ~ ~ if block ~ ~ ~ obsidian run setblock ~ ~ ~ air
execute if score %nerf_obsidian ds matches 1 as @a at @s positioned ~ ~1 ~ if block ~ ~ ~ obsidian run tellraw @s {"text":"Obsidian trapping has been nerfed. The block has been broken for you!","bold":false,"color":light_purple}
execute if score %nerf_obsidian ds matches 1 as @a at @s positioned ~ ~1 ~ if block ~ ~ ~ obsidian run playsound block.stone.break block @a[distance=..15] ~ ~ ~ 1 1
execute if score %nerf_obsidian ds matches 1 as @a at @s positioned ~ ~1 ~ if block ~ ~ ~ obsidian run particle block{block_state:"minecraft:obsidian"} ~ ~ ~ 0.5 0.5 0.5 1 50 normal
execute if score %nerf_obsidian ds matches 1 as @a at @s positioned ~ ~1 ~ if block ~ ~ ~ obsidian run setblock ~ ~ ~ air

# Optional lava nerf
execute if score %nerf_obsidian ds matches 1 run effect give @a fire_resistance 3 0 false
