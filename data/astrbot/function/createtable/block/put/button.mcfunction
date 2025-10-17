# height 0.125, width 0.1875
data merge entity @s {height: 0, width: 0, response: true, Tags: ["astrbot.just", "astrbot.createtable.button.interaction"]}
summon item_display ~ ~ ~ {item: {id: "green_concrete", count:1}, transformation: {left_rotation: [.0,.0,.0,1.0], right_rotation:[.0,.0,.0,1.0], scale: [0.1875,0.125,0.0625], translation: [.0,.0,.0]}, view_range: 0, Tags: ["astrbot.just.model", "astrbot.just"]}
ride @n[tag=astrbot.just.model, distance=0..1, type=item_display] mount @s
execute on passengers run tag @s remove astrbot.just.model