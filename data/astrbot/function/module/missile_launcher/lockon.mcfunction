summon minecraft:text_display ~0 ~0 ~0 {text:"\u00a7c☐",brightness:{block:15,sky:15}, transformation:[10f,0f,0f,0f,0f,10f,0f,0f,0f,0f,10f,0f,0f,0f,0f,1f], background:0, billboard:"center", alignment:"left", width:1f, height:1f, view_range:0.5f,Tags:["lockonsym","locksym"]}
tag @s add lockon
execute as @e[tag=launch] run function astrbot:module/missile_launcher/launch

tag @s remove lockon
