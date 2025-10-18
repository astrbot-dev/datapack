# placeholder model
summon item_display ~ ~ ~ {item: {id: "end_portal_frame", count: 1}, Tags: ["astrbot.just", "astrbot.createtable.model"]}

# bot model
summon item_display ~ ~ ~ {Tags: ["astrbot.just", "astrbot.createtable.bot.model"], transformation: {left_rotation: [.0,.0,.0,1.0], right_rotation:[.0,.0,.0,1.0], scale: [0.8,0.8,0.8], translation: [.0,.4,.0]}}

# button
execute positioned ^ ^ ^0.33125 summon interaction run function astrbot:createtable/block/put/button