# Logs the most recent damage source entity as: Wither Skeleton
# Category id: 49
scoreboard players set @s ds_cause_source 49
advancement revoke @s only death-swap:death_causes/source/wither_skeleton
execute if score %wither_skeleton ds_cause_source >= %lockout_limit ds run scoreboard players set @s ds_cause_source -1
