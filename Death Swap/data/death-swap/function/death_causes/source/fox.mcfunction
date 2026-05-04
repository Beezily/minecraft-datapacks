# Logs the most recent damage source entity as: Fox
# Category id: 33
scoreboard players set @s ds_cause_source 33
advancement revoke @s only death-swap:death_causes/source/fox
execute if score %fox ds_cause_source >= %lockout_limit ds run scoreboard players set @s ds_cause_source -1
