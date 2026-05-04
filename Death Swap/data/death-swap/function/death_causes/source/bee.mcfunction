# Logs the most recent damage source entity as: Bee
# Category id: 28
scoreboard players set @s ds_cause_source 28
advancement revoke @s only death-swap:death_causes/source/bee
execute if score %bee ds_cause_source >= %lockout_limit ds run scoreboard players set @s ds_cause_source -1
