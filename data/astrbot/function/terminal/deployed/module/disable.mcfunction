$execute on vehicle at @s run function astrbot:module/$(module)/disable
$execute on vehicle on owner run tellraw @s {color:"red",translate:"tips.disable",with:[{translate:"item.astrbot.$(module)"}]}