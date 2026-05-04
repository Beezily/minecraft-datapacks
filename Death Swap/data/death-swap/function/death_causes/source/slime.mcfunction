# Logs the most recent damage source entity as: Slime
# Category id: 23
scoreboard players set @s ds_cause_source 23
advancement revoke @s only death-swap:death_causes/source/slime
execute if score %slime ds_cause_source >= %lockout_limit ds run scoreboard players set @s ds_cause_source -1
