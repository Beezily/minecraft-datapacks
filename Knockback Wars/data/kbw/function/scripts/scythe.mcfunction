#Returning the scythe and untagging noScythe; playsound and kills self
give @a[team=Reaper,tag=noScythe,limit=1,sort=nearest,scores={calculation=..19}] minecraft:netherite_hoe[custom_name={text:"Soul Reaper",color:"black",italic:false},lore=[{text:"This mysterious scythe has"},{text:"strange powers. Not even you"},{text:"have complete mastery of it. "}],unbreakable={},enchantments={"minecraft:knockback":2},custom_data={scythe:2b},tooltip_display={hidden_components:["unbreakable","attribute_modifiers"]}] 1
tag @a[team=Reaper,tag=noScythe,limit=1,sort=nearest,scores={calculation=..19}] remove noScythe
playsound minecraft:block.soul_sand.step master @a ~ ~ ~ 1 2 1
kill @s