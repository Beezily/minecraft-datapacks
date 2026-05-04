# Logs the most recent damage source entity as: Wither
# Category id: 51
scoreboard players set @s ds_cause_source 51
advancement revoke @s only death-swap:death_causes/source/wither
execute if score %wither ds_cause_source >= %lockout_limit ds run scoreboard players set @s ds_cause_source -1
