#以display为执行者检查根实体是否存在

execute on vehicle run return fail


summon item ~ ~ ~ {Tags:["astrbot_clear_lost"],PickupDelay:100s,Item:{id:"stone",count:1}}

data modify entity @n[tag=astrbot_clear_lost] Thrower set from entity @s data.Owner
execute as @n[tag=astrbot_clear_lost] on origin run scoreboard players remove @s astrbot.bot_count 1
kill @n[tag=astrbot_clear_lost]
function astrbot:bot/clear/cascading