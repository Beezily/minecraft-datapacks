# Logs the most recent damage source entity as: Zombie Nautilus
# Category id: 45
scoreboard players set @s ds_cause_source 45
advancement revoke @s only death-swap:death_causes/source/zombie_nautilus
execute if score %zombie_nautilus ds_cause_source >= %lockout_limit ds run scoreboard players set @s ds_cause_source -1
