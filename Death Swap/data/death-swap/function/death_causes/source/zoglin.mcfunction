# Logs the most recent damage source entity as: Zoglin
# Category id: 53
scoreboard players set @s ds_cause_source 53
advancement revoke @s only death-swap:death_causes/source/zoglin
execute if score %zoglin ds_cause_source >= %lockout_limit ds run scoreboard players set @s ds_cause_source -1
