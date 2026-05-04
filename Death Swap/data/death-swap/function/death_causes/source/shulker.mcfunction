# Logs the most recent damage source entity as: Shulker
# Category id: 20
scoreboard players set @s ds_cause_source 20
advancement revoke @s only death-swap:death_causes/source/shulker
execute if score %shulker ds_cause_source >= %lockout_limit ds run scoreboard players set @s ds_cause_source -1
