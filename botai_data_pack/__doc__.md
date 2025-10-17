# 文档

## function botai:simple_follow/step
输入为实体，执行位置，执行维度，分数（@s botai.vel，扩大10000倍）
运行函数后，实体会以（@s botai.vel）的速度向执行位置运动一次，并且衰减（@s botai.vel）的值
在tick里循环运行：
```
# 设置实体的速度值为2800，如果不更新速度，速度会在function botai:/simple_follow/step内不断衰减
as 实体 at @s run tick:
    scoreboard players set 实体 botai.vel 2800
    at 目标位置 run function botai:/simple_follow/step
```

如果要跟随玩家，建议使用如下写法（主世界0 0 0已经设置为常加载区块）：
```
as 机器人 at @s run tick:
    # 获取玩家眼睛位置
    as 玩家 at @s if loaded ~ ~ ~ anchored eyes run tp 世界实体 ^ ^ ^

    # 如果玩家在停止范围外，就设置速度，让机器人靠近
    as 世界实体 if entity @s[distance=停止范围..] run scoreboard players set 实体 botai.vel 速度

    # 让机器人向玩家眼睛靠近
    at 世界实体 run function botai:/simple_follow/step
    
    in overworld run tp 世界实体 0 0 0
```