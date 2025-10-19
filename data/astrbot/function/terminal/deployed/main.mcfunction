advancement revoke @s only astrbot:terminal/bot
#视线追踪获取正在操作的无人机
execute anchored eyes run function astrbot:terminal/deployed/raycasting
data modify storage astrbot:terminal raycasting set value false
#存储此玩家正在操作的无人机uid
function astrbot:terminal/deployed/player with entity @s
#终端面板
function astrbot:terminal/deployed/dialog with storage astrbot:terminal