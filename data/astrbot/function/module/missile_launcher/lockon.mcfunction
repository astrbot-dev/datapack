summon minecraft:text_display ~ ~0.5 ~ {text:"\u00a7c⬜",brightness:{block:15,sky:15},transformation:{left_rotation:{axis:[0f,0f,1f],angle:0.7853975f},right_rotation:[0f,0f,0f,1f],scale:[7.07f,7.07f,7.07f],translation:[0.687f,-0.45f,0f]}, background:0, billboard:"center", alignment:"left", width:1f, height:1f, view_range:0.5f,Tags:["lockonsym","locksym"]}
summon minecraft:text_display ~ ~0.5 ~ {text:"\u00a7c⬜",brightness:{block:15,sky:15},transformation:{right_rotation:[0f,0f,0f,1f],translation:[0f,-1f,0f],left_rotation:[0f,0f,0f,1f],scale:[10f,10f,10f]}, background:0, billboard:"center", alignment:"left", width:1f, height:1f, view_range:0.5f,Tags:["lockonsym","locksym"]}
tag @s add lockon
execute as @e[tag=launch] run function astrbot:module/missile_launcher/launch

tag @s remove lockon
