# Logs the most recent damage source entity as: Skeleton
# Category id: 22
scoreboard players set @s ds_cause_source 22
advancement revoke @s only death-swap:death_causes/source/skeleton
execute if score %skeleton ds_cause_source >= %lockout_limit ds run scoreboard players set @s ds_cause_source -1
