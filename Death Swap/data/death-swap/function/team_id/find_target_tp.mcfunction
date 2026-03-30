# Updates each player's group ID to the NEXT GROUP as that's how the swap order is determined
# Run by each player without dsTrim
tag @s add dsMe
scoreboard players add @s ds_group 1

# Tag marker with dsFound if valid target
execute as @e[type=marker,tag=dsSwap] if score @s ds_group = @n[tag=dsMe] ds_group if score @s ds_group_order = @n[tag=dsMe] ds_group_order run tag @s add dsFound

# Case no valid target, we update score to next group order
execute unless entity @n[type=marker,tag=dsFound] run scoreboard players add @s ds_group_order 1
execute unless entity @n[type=marker,tag=dsFound] run scoreboard players operation @s ds_group_order %= %largest ds
execute unless entity @n[type=marker,tag=dsFound] run scoreboard players set @s ds_group 0

# Tag again, this time it will be found
execute unless entity @n[type=marker,tag=dsFound] as @e[type=marker,tag=dsSwap] if score @s ds_group = @n[tag=dsMe] ds_group if score @s ds_group_order = @n[tag=dsMe] ds_group_order run tag @s add dsFound

# Teleport to target marker, then kill target marker, untag
tp @s @n[type=marker,tag=dsFound]
kill @e[tag=dsFound]
tag @a[tag=dsMe] remove dsMe

