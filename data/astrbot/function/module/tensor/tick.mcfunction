execute as @e[type=wolf,distance=0..,tag=astrbot_tensor] if function astrbot:module/tensor/consume at @s run function astrbot:module/tensor/main
schedule function astrbot:module/tensor/tick 10t