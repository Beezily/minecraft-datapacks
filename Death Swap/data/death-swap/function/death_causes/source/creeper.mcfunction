# Logs the most recent damage source entity as: Creeper
# Category id: 6
scoreboard players set @s ds_cause_source 6
advancement revoke @s only death-swap:death_causes/source/creeper
execute if score %creeper ds_cause_source >= %lockout_limit ds run scoreboard players set @s ds_cause_source -1
