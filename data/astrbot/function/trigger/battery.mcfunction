##这个记分项用于充电

#这是玩家当前正在操作的无人机的uid：
data modify storage astrbot:terminal main.UUID set from entity @s UUID
function astrbot:terminal/deployed/battery/get_data with storage astrbot:terminal main
scoreboard players reset @s astrbot.battery
scoreboard players enable @s astrbot.battery