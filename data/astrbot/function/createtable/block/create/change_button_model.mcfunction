data modify entity @s transformation.scale[2] set value 0.01
data modify entity @n[tag=astrbot.createtable.button.will_release, type=item_display] transformation.translation[2] set value -0.02
tag @s add astrbot.createtable.button.will_release
schedule function astrbot:createtable/block/create/button_release_anim 10 append