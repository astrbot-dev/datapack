##这个记分项用于跟随

#这是玩家当前正在操作的无人机的uid：
data modify storage astrbot:terminal main.UUID set from entity @s UUID
function astrbot:terminal/deployed/follow/get_data with storage astrbot:terminal main
scoreboard players reset @s astrbot.follow
scoreboard players enable @s astrbot.follow