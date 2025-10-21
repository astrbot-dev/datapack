#context: interaction(astrbot.createtable.slot)

#one bot can only install one attack module. If a slot install an attack module, the another attack module will be disabled
execute if entity @s[tag=astrbot.createtable.slot.disable] run return 0

scoreboard players operation curr_createtable astrbot.temp = @s astrbot.createtable_id

execute on passengers run tag @s add astrbot.temp
tag @s add astrbot.temp
#if the slot is empty and player's mainhand is empty, take item out
execute if entity @s[tag=!astrbot.createtable.slot.empty] on target unless items entity @s weapon.mainhand * run function astrbot:createtable/block/slot/take
# Or replace the item in the slot
execute on target if items entity @s weapon.mainhand * run function astrbot:createtable/block/slot/insert

tag @s remove astrbot.temp
data remove entity @s interaction