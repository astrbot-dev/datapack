advancement revoke @s only astrbot:terminal/bot
#获取正在操作的无人机
tag @s add astrbot_terminal_requester

#是潜行使用机器人
execute if predicate astrbot:player/is_sneaking as @e[type=interaction,distance=0..10] if data entity @s interaction if function astrbot:terminal/deployed/check_use run return run function astrbot:bot/shift_use
#否则获取机器人信息
execute as @e[type=interaction,distance=0..10] if data entity @s interaction if function astrbot:terminal/deployed/check_use run function astrbot:terminal/deployed/get_uid
tag @s remove astrbot_terminal_requester
#存储此玩家正在操作的无人机uid
function astrbot:terminal/deployed/player with entity @s
#终端面板
function astrbot:terminal/deployed/dialog with storage astrbot:terminal