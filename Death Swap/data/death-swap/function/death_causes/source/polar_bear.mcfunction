# Logs the most recent damage source entity as: Polar Bear
# Category id: 40
scoreboard players set @s ds_cause_source 40
advancement revoke @s only death-swap:death_causes/source/polar_bear
execute if score %polar_bear ds_cause_source >= %lockout_limit ds run scoreboard players set @s ds_cause_source -1
