# placeholder model
summon item_display ~ ~ ~ {item: {id: "end_portal_frame", count: 1, components:{item_model:"astrbot:createtable/platform"}}, Tags: ["astrbot.just", "astrbot.createtable.model"]}

# bot model
summon item_display ~ ~ ~ {Tags: ["astrbot.just", "astrbot.createtable.bot.model"], transformation: {left_rotation: [.0,.0,.0,1.0], right_rotation:[.0,.0,.0,1.0], scale: [0.8,0.8,0.8], translation: [.0,.4,.0]}}

ride @n[tag=astrbot.createtable.bot.model, tag=astrbot.just, distance=0..1, type=item_display] mount @n[tag=astrbot.createtable.model, tag=astrbot.just, distance=0..1, type=item_display]
