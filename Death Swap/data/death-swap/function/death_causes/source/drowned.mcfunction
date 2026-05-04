# Logs the most recent damage source entity as: Drowned
# Category id: 31
scoreboard players set @s ds_cause_source 31
advancement revoke @s only death-swap:death_causes/source/drowned
execute if score %drowned ds_cause_source >= %lockout_limit ds run scoreboard players set @s ds_cause_source -1
