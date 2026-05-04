# Logs the most recent damage source entity as: Iron Golem
# Category id: 35
scoreboard players set @s ds_cause_source 35
advancement revoke @s only death-swap:death_causes/source/iron_golem
execute if score %iron_golem ds_cause_source >= %lockout_limit ds run scoreboard players set @s ds_cause_source -1
