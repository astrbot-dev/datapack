# 关于正负偏移量的设置 :
# 设正空格为x,负空格为y,理想偏移为p(初次将字符串移动到目标位置的偏移量(取奇数, 怪怪的)),字符串宽度为a
# 满足方程
# y+x=p --[1]; y-a=x --[2]
# 在实际操作中，我们要求a为奇数，理想偏移p取奇数，负空格取y+1

# 条件筛选
execute unless entity @s[gamemode=!creative,gamemode=!spectator] run return fail

# 元数据读取
scoreboard players operation #power astrbot.var = @s astrbot.player_power

# 列表注入
function astrbot:hud/data/0_battery/0/main
function astrbot:hud/data/0_battery/1/main
function astrbot:hud/data/0_battery/2/main
function astrbot:hud/data/0_battery/3/main
function astrbot:hud/data/0_battery/4/main
function astrbot:hud/data/0_battery/5/main
function astrbot:hud/data/0_battery/6/main
function astrbot:hud/data/0_battery/7/main
function astrbot:hud/data/0_battery/8/main
function astrbot:hud/data/0_battery/9/main
function astrbot:hud/data/0_battery/x