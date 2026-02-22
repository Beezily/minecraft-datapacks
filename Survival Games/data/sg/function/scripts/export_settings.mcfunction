# Exports scoreboard constants into storage sg:settings

# =========================
# World border settings
# =========================

# world_center_x = #world_center_x + 0.5
scoreboard players operation %temp sg = #world_center_x sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings world_center_x double 0.1 run scoreboard players get %temp sg

# world_center_z = #world_center_z + 0.5
scoreboard players operation %temp sg = #world_center_z sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings world_center_z double 0.1 run scoreboard players get %temp sg

# world_border_diam = #world_border_diam (no +0.5)
execute store result storage sg:settings world_border_diam int 1 run scoreboard players get #world_border_diam sg

# world_border_half = world_border_diam / 2
execute store result storage sg:settings world_border_half int 0.5 run scoreboard players get #world_border_diam sg

# deathmatch_diam = #deathmatch_diam (no +0.5)
execute store result storage sg:settings deathmatch_diam int 1 run scoreboard players get #deathmatch_diam sg

# =========================
# Supply drops
# =========================

# supply1
scoreboard players operation %temp sg = #supply1x sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings supply1x double 0.1 run scoreboard players get %temp sg

scoreboard players operation %temp sg = #supply1y sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings supply1y double 0.1 run scoreboard players get %temp sg

scoreboard players operation %temp sg = #supply1z sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings supply1z double 0.1 run scoreboard players get %temp sg

# supply2
scoreboard players operation %temp sg = #supply2x sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings supply2x double 0.1 run scoreboard players get %temp sg

scoreboard players operation %temp sg = #supply2y sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings supply2y double 0.1 run scoreboard players get %temp sg

scoreboard players operation %temp sg = #supply2z sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings supply2z double 0.1 run scoreboard players get %temp sg

# supply3
scoreboard players operation %temp sg = #supply3x sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings supply3x double 0.1 run scoreboard players get %temp sg

scoreboard players operation %temp sg = #supply3y sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings supply3y double 0.1 run scoreboard players get %temp sg

scoreboard players operation %temp sg = #supply3z sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings supply3z double 0.1 run scoreboard players get %temp sg

# supply4
scoreboard players operation %temp sg = #supply4x sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings supply4x double 0.1 run scoreboard players get %temp sg

scoreboard players operation %temp sg = #supply4y sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings supply4y double 0.1 run scoreboard players get %temp sg

scoreboard players operation %temp sg = #supply4z sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings supply4z double 0.1 run scoreboard players get %temp sg


# =========================
# Team spawns
# =========================

# --- Red 1-4 ---
scoreboard players operation %temp sg = #red1x sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings red1x double 0.1 run scoreboard players get %temp sg
scoreboard players operation %temp sg = #red1y sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings red1y double 0.1 run scoreboard players get %temp sg
scoreboard players operation %temp sg = #red1z sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings red1z double 0.1 run scoreboard players get %temp sg

scoreboard players operation %temp sg = #red2x sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings red2x double 0.1 run scoreboard players get %temp sg
scoreboard players operation %temp sg = #red2y sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings red2y double 0.1 run scoreboard players get %temp sg
scoreboard players operation %temp sg = #red2z sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings red2z double 0.1 run scoreboard players get %temp sg

scoreboard players operation %temp sg = #red3x sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings red3x double 0.1 run scoreboard players get %temp sg
scoreboard players operation %temp sg = #red3y sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings red3y double 0.1 run scoreboard players get %temp sg
scoreboard players operation %temp sg = #red3z sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings red3z double 0.1 run scoreboard players get %temp sg

scoreboard players operation %temp sg = #red4x sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings red4x double 0.1 run scoreboard players get %temp sg
scoreboard players operation %temp sg = #red4y sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings red4y double 0.1 run scoreboard players get %temp sg
scoreboard players operation %temp sg = #red4z sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings red4z double 0.1 run scoreboard players get %temp sg


# --- Yellow 1-4 ---
scoreboard players operation %temp sg = #yellow1x sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings yellow1x double 0.1 run scoreboard players get %temp sg
scoreboard players operation %temp sg = #yellow1y sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings yellow1y double 0.1 run scoreboard players get %temp sg
scoreboard players operation %temp sg = #yellow1z sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings yellow1z double 0.1 run scoreboard players get %temp sg

scoreboard players operation %temp sg = #yellow2x sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings yellow2x double 0.1 run scoreboard players get %temp sg
scoreboard players operation %temp sg = #yellow2y sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings yellow2y double 0.1 run scoreboard players get %temp sg
scoreboard players operation %temp sg = #yellow2z sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings yellow2z double 0.1 run scoreboard players get %temp sg

scoreboard players operation %temp sg = #yellow3x sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings yellow3x double 0.1 run scoreboard players get %temp sg
scoreboard players operation %temp sg = #yellow3y sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings yellow3y double 0.1 run scoreboard players get %temp sg
scoreboard players operation %temp sg = #yellow3z sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings yellow3z double 0.1 run scoreboard players get %temp sg

scoreboard players operation %temp sg = #yellow4x sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings yellow4x double 0.1 run scoreboard players get %temp sg
scoreboard players operation %temp sg = #yellow4y sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings yellow4y double 0.1 run scoreboard players get %temp sg
scoreboard players operation %temp sg = #yellow4z sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings yellow4z double 0.1 run scoreboard players get %temp sg


# --- Blue 1-4 ---
scoreboard players operation %temp sg = #blue1x sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings blue1x double 0.1 run scoreboard players get %temp sg
scoreboard players operation %temp sg = #blue1y sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings blue1y double 0.1 run scoreboard players get %temp sg
scoreboard players operation %temp sg = #blue1z sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings blue1z double 0.1 run scoreboard players get %temp sg

scoreboard players operation %temp sg = #blue2x sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings blue2x double 0.1 run scoreboard players get %temp sg
scoreboard players operation %temp sg = #blue2y sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings blue2y double 0.1 run scoreboard players get %temp sg
scoreboard players operation %temp sg = #blue2z sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings blue2z double 0.1 run scoreboard players get %temp sg

scoreboard players operation %temp sg = #blue3x sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings blue3x double 0.1 run scoreboard players get %temp sg
scoreboard players operation %temp sg = #blue3y sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings blue3y double 0.1 run scoreboard players get %temp sg
scoreboard players operation %temp sg = #blue3z sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings blue3z double 0.1 run scoreboard players get %temp sg

scoreboard players operation %temp sg = #blue4x sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings blue4x double 0.1 run scoreboard players get %temp sg
scoreboard players operation %temp sg = #blue4y sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings blue4y double 0.1 run scoreboard players get %temp sg
scoreboard players operation %temp sg = #blue4z sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings blue4z double 0.1 run scoreboard players get %temp sg


# --- Green 1-4 ---
scoreboard players operation %temp sg = #green1x sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings green1x double 0.1 run scoreboard players get %temp sg
scoreboard players operation %temp sg = #green1y sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings green1y double 0.1 run scoreboard players get %temp sg
scoreboard players operation %temp sg = #green1z sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings green1z double 0.1 run scoreboard players get %temp sg

scoreboard players operation %temp sg = #green2x sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings green2x double 0.1 run scoreboard players get %temp sg
scoreboard players operation %temp sg = #green2y sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings green2y double 0.1 run scoreboard players get %temp sg
scoreboard players operation %temp sg = #green2z sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings green2z double 0.1 run scoreboard players get %temp sg

scoreboard players operation %temp sg = #green3x sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings green3x double 0.1 run scoreboard players get %temp sg
scoreboard players operation %temp sg = #green3y sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings green3y double 0.1 run scoreboard players get %temp sg
scoreboard players operation %temp sg = #green3z sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings green3z double 0.1 run scoreboard players get %temp sg

scoreboard players operation %temp sg = #green4x sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings green4x double 0.1 run scoreboard players get %temp sg
scoreboard players operation %temp sg = #green4y sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings green4y double 0.1 run scoreboard players get %temp sg
scoreboard players operation %temp sg = #green4z sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings green4z double 0.1 run scoreboard players get %temp sg


# --- Aqua 1-4 ---
scoreboard players operation %temp sg = #aqua1x sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings aqua1x double 0.1 run scoreboard players get %temp sg
scoreboard players operation %temp sg = #aqua1y sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings aqua1y double 0.1 run scoreboard players get %temp sg
scoreboard players operation %temp sg = #aqua1z sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings aqua1z double 0.1 run scoreboard players get %temp sg

scoreboard players operation %temp sg = #aqua2x sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings aqua2x double 0.1 run scoreboard players get %temp sg
scoreboard players operation %temp sg = #aqua2y sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings aqua2y double 0.1 run scoreboard players get %temp sg
scoreboard players operation %temp sg = #aqua2z sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings aqua2z double 0.1 run scoreboard players get %temp sg

scoreboard players operation %temp sg = #aqua3x sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings aqua3x double 0.1 run scoreboard players get %temp sg
scoreboard players operation %temp sg = #aqua3y sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings aqua3y double 0.1 run scoreboard players get %temp sg
scoreboard players operation %temp sg = #aqua3z sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings aqua3z double 0.1 run scoreboard players get %temp sg

scoreboard players operation %temp sg = #aqua4x sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings aqua4x double 0.1 run scoreboard players get %temp sg
scoreboard players operation %temp sg = #aqua4y sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings aqua4y double 0.1 run scoreboard players get %temp sg
scoreboard players operation %temp sg = #aqua4z sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings aqua4z double 0.1 run scoreboard players get %temp sg


# --- Purple 1-4 ---
scoreboard players operation %temp sg = #purple1x sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings purple1x double 0.1 run scoreboard players get %temp sg
scoreboard players operation %temp sg = #purple1y sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings purple1y double 0.1 run scoreboard players get %temp sg
scoreboard players operation %temp sg = #purple1z sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings purple1z double 0.1 run scoreboard players get %temp sg

scoreboard players operation %temp sg = #purple2x sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings purple2x double 0.1 run scoreboard players get %temp sg
scoreboard players operation %temp sg = #purple2y sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings purple2y double 0.1 run scoreboard players get %temp sg
scoreboard players operation %temp sg = #purple2z sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings purple2z double 0.1 run scoreboard players get %temp sg

scoreboard players operation %temp sg = #purple3x sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings purple3x double 0.1 run scoreboard players get %temp sg
scoreboard players operation %temp sg = #purple3y sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings purple3y double 0.1 run scoreboard players get %temp sg
scoreboard players operation %temp sg = #purple3z sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings purple3z double 0.1 run scoreboard players get %temp sg

scoreboard players operation %temp sg = #purple4x sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings purple4x double 0.1 run scoreboard players get %temp sg
scoreboard players operation %temp sg = #purple4y sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings purple4y double 0.1 run scoreboard players get %temp sg
scoreboard players operation %temp sg = #purple4z sg
scoreboard players operation %temp sg *= #10 sg
scoreboard players operation %temp sg += #5 sg
execute store result storage sg:settings purple4z double 0.1 run scoreboard players get %temp sg