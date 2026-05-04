# Logs the most recent damage source entity as: Vex
# Category id: 25
scoreboard players set @s ds_cause_source 25
advancement revoke @s only death-swap:death_causes/source/vex
execute if score %vex ds_cause_source >= %lockout_limit ds run scoreboard players set @s ds_cause_source -1
