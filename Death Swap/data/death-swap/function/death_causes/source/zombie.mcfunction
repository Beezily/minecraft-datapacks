# Logs the most recent damage source entity as: Zombie
# Category id: 47
scoreboard players set @s ds_cause_source 47
advancement revoke @s only death-swap:death_causes/source/zombie
execute if score %zombie ds_cause_source >= %lockout_limit ds run scoreboard players set @s ds_cause_source -1
