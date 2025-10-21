data modify storage astrbot:terminal temp1 set string entity @s item.components."minecraft:custom_data".astrbot.modules[{slot:0}].module.name 8
function astrbot:terminal/deployed/bot_type/module_name with storage astrbot:terminal
data modify storage astrbot:terminal dialog.body.contents[6].hover_event.value.color set value "white"
data modify storage astrbot:terminal dialog.body.contents[6].hover_event.value.translate set from storage astrbot:terminal temp2