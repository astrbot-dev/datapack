data modify storage astrbot:temp createtable.lore append value [{"translate": "item.astrbot.astrbot.lore.slot1", "color": "gray", "italic": false}, " "]
execute store result score module_id astrbot.temp run data get storage astrbot:temp createtable.item.components."minecraft:custom_data".astrbot.modules[{slot:0}].module.module_id
function astrbot:createtable/block/create/create_bot/append_lore
