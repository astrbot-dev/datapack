#TODO
#执行者 item_display 机器人的物品展示实体
#通过读取物品信息中的astrbot.modules列表来更新机器人身上的模块模型

data modify entity @s item.components."minecraft:custom_model_data".strings set value ["empty","empty","empty","empty"]

function lay:macro/list/init {func:"astrbot:bot/modules_model/unit",list:"entity @s item.components.\"minecraft:custom_data\".astrbot.modules"}

