# Logs the most recent damage source entity as: Pillager
# Category id: 18
scoreboard players set @s ds_cause_source 18
advancement revoke @s only death-swap:death_causes/source/pillager
execute if score %pillager ds_cause_source >= %lockout_limit ds run scoreboard players set @s ds_cause_source -1
