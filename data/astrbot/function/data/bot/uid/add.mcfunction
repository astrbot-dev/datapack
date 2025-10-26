# UID自增
execute store result storage astrbot:bot temp int 1.0 run scoreboard players add #bot astrbot.uid 1
# 编号
$item modify entity @s $(slot) {function:"minecraft:copy_custom_data",ops:[{op:"replace",source:"temp",target:"uid.id"}],source:{source:"astrbot:bot",type:"minecraft:storage"}}