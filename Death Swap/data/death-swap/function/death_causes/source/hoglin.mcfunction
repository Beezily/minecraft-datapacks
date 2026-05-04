# Logs the most recent damage source entity as: Hoglin
# Category id: 12
scoreboard players set @s ds_cause_source 12
advancement revoke @s only death-swap:death_causes/source/hoglin
execute if score %hoglin ds_cause_source >= %lockout_limit ds run scoreboard players set @s ds_cause_source -1
