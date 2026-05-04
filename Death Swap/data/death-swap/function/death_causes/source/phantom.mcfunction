# Logs the most recent damage source entity as: Phantom
# Category id: 16
scoreboard players set @s ds_cause_source 16
advancement revoke @s only death-swap:death_causes/source/phantom
execute if score %phantom ds_cause_source >= %lockout_limit ds run scoreboard players set @s ds_cause_source -1
