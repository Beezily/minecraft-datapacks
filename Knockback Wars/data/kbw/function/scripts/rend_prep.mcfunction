#Grim Reaper prepares for rend
clear @s minecraft:netherite_hoe[custom_data~{scythe:2b}]
execute if items entity @s weapon.mainhand * run give @s minecraft:diamond_hoe[custom_name={text:"Soul Rend",color:"aqua",italic:true},lore=[{text:"Attack someone to rend"},{text:"their soul away temporarily."}],damage=1561,enchantments={"minecraft:sharpness":10,"minecraft:knockback":5},custom_data={scythe:3b}] 1
execute unless items entity @s weapon.mainhand * run clear @s minecraft:diamond_hoe[custom_data~{scythe:3b}]
execute unless items entity @s weapon.mainhand * run item replace entity @s weapon.mainhand with minecraft:diamond_hoe[custom_name={text:"Soul Rend",color:"aqua",italic:true},lore=[{text:"Attack someone to rend"},{text:"their soul away temporarily."}],damage=1561,enchantments={"minecraft:sharpness":10,"minecraft:knockback":5},custom_data={scythe:3b}] 1
