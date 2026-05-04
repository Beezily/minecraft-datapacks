# Logs the most recent damage source entity as: Panda
# Category id: 38
scoreboard players set @s ds_cause_source 38
advancement revoke @s only death-swap:death_causes/source/panda
execute if score %panda ds_cause_source >= %lockout_limit ds run scoreboard players set @s ds_cause_source -1
