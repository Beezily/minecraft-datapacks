# Logs the most recent damage source entity as: Evoker
# Category id: 9
scoreboard players set @s ds_cause_source 9
advancement revoke @s only death-swap:death_causes/source/evoker
execute if score %evoker ds_cause_source >= %lockout_limit ds run scoreboard players set @s ds_cause_source -1
