#summon minecraft:text_display ~ ~0.5 ~ {text:"\u00a7c⬜",brightness:{block:15,sky:15},transformation:{left_rotation:{axis:[0f,0f,1f],angle:0.7853975f},right_rotation:[0f,0f,0f,1f],scale:[7.07f,7.07f,7.07f],translation:[0.687f,-0.45f,0f]}, background:0, billboard:"center", alignment:"left", width:1f, height:1f, view_range:0.5f,Tags:["lockonsym","locksym"]}
#summon minecraft:text_display ~ ~0.5 ~ {text:"\u00a7c⬜",brightness:{block:15,sky:15},transformation:{right_rotation:[0f,0f,0f,1f],translation:[0f,-1f,0f],left_rotation:[0f,0f,0f,1f],scale:[10f,10f,10f]}, background:0, billboard:"center", alignment:"left", width:1f, height:1f, view_range:0.5f,Tags:["lockonsym","locksym"]}
execute anchored eyes run summon minecraft:text_display ^ ^ ^ {Tags:["lockonsym","locksym",hud],alignment: "left", background: 0, billboard: "center", brightness: {block: 15, sky: 15}, default_background: 0b, height: 1.0f, line_width: 200, see_through: 0b, shadow: 0b, text: "§c⬜", text_opacity: 255, transformation: {left_rotation: [0.0f, 0.0f, 0.3826831f, 0.9238797f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.7070003f, 0.7070003f, 0.7070001f], translation: [0.069f, -0.064f, 0.0f]}, view_range: 0.5f, width: 1.0f}
execute anchored eyes run summon minecraft:text_display ^ ^ ^ {Tags:["lockonsym","locksym",hud],alignment: "left", background: 0, billboard: "center", brightness: {block: 15, sky: 15}, default_background: 0b, height: 1.0f, line_width: 200, see_through: 0b, shadow: 0b, text: "§c⬜", text_opacity: 255, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.0f, -0.12f, 0.0f]}, view_range: 0.5f, width: 1.0f}

execute as @e[tag=hud] run function astrbot:module/missile_launcher/hud

tag @s add lockon
execute as @e[tag=launch] run function astrbot:module/missile_launcher/launch
tag @s remove lockon
