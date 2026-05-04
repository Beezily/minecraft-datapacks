# Logs the most recent damage source entity as: Magma Cube
# Category id: 14
scoreboard players set @s ds_cause_source 14
advancement revoke @s only death-swap:death_causes/source/magma_cube
execute if score %magma_cube ds_cause_source >= %lockout_limit ds run scoreboard players set @s ds_cause_source -1
