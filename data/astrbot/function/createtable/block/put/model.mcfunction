summon item_display ~ ~ ~ {Tags: ["astrbot.just", "astrbot.createtable.model"]}
loot replace entity @n[tag=astrbot.just, tag=astrbot.createtable.model, distance=0..1] contents loot astrbot:createtable

# bot model
summon item_display ~ ~ ~ {Tags: ["astrbot.just", "astrbot.createtable.bot.model"], transformation: {left_rotation: [.0,.0,.0,1.0], right_rotation:[.0,.0,.0,1.0], scale: [0.8,0.8,0.8], translation: [.0,.4,.0]}}

ride @n[tag=astrbot.createtable.bot.model, tag=astrbot.just, distance=0..1, type=item_display] mount @n[tag=astrbot.createtable.model, tag=astrbot.just, distance=0..1, type=item_display]
