kill @s
execute summon marker run function astrbot:createtable/block/put/summon_root
setblock ~ ~ ~ barrier

scoreboard players add static_id astrbot.createtable_id 1


# placeholder model
summon item_display ~ ~ ~ {item: {id: "end_portal_frame", count: 1}, Tags: ["astrbot.just", "astrbot.createtable.model"]}