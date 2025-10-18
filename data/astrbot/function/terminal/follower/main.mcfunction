##获取已部署的无人机数据
  tag @s add astrbot_owner
  execute as @e[type=wolf,tag=astrbot_root,distance=..30] run function astrbot:terminal/follower/owner
  tag @s remove astrbot_owner

##获取未部署的无人机数据
