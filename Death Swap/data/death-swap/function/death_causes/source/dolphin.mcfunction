# Logs the most recent damage source entity as: Dolphin
# Category id: 30
scoreboard players set @s ds_cause_source 30
advancement revoke @s only death-swap:death_causes/source/dolphin
execute if score %dolphin ds_cause_source >= %lockout_limit ds run scoreboard players set @s ds_cause_source -1
