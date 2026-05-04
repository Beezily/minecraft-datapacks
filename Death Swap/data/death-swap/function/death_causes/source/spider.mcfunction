# Logs the most recent damage source entity as: Spider
# Category id: 42
scoreboard players set @s ds_cause_source 42
advancement revoke @s only death-swap:death_causes/source/spider
execute if score %spider ds_cause_source >= %lockout_limit ds run scoreboard players set @s ds_cause_source -1
