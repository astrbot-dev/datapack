##这个记分项用于解绑

#这是玩家当前正在操作的无人机的uid：
data modify storage astrbot:terminal main.UUID set from entity @s UUID
function astrbot:terminal/deployed/unbind/get_data with storage astrbot:terminal main
scoreboard players remove @s astrbot.bot_count 1
scoreboard players reset @s astrbot.unbind
scoreboard players enable @s astrbot.unbind