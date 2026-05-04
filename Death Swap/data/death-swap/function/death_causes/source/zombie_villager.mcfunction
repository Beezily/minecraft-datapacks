# Logs the most recent damage source entity as: Zombie Villager
# Category id: 48
scoreboard players set @s ds_cause_source 48
advancement revoke @s only death-swap:death_causes/source/zombie_villager
execute if score %zombie_villager ds_cause_source >= %lockout_limit ds run scoreboard players set @s ds_cause_source -1
