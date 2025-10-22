$execute on vehicle at @s run function astrbot:module/$(module)/enable
$execute on vehicle on owner run tellraw @s {color:"green",translate:"tips.enable",with:[{translate:"item.astrbot.$(module)"}]}