#地面型由ai自动跟随，处理无标签时不跟随情况

execute unless entity @s[tag=astrbot_follow] run data modify entity @s Sitting set value 1b

execute if entity @s[tag=astrbot_follow] run data modify entity @s Sitting set value 0b