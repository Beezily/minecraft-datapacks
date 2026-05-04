# Logs the most recent damage source entity as: Silverfish
# Category id: 21
scoreboard players set @s ds_cause_source 21
advancement revoke @s only death-swap:death_causes/source/silverfish
execute if score %silverfish ds_cause_source >= %lockout_limit ds run scoreboard players set @s ds_cause_source -1
