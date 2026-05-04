# Logs the most recent damage source entity as: Witch
# Category id: 50
scoreboard players set @s ds_cause_source 50
advancement revoke @s only death-swap:death_causes/source/witch
execute if score %witch ds_cause_source >= %lockout_limit ds run scoreboard players set @s ds_cause_source -1
