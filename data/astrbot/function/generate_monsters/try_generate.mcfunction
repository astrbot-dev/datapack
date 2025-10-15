# 尝试一次刷怪
# 调用自tick


# 新栈帧
data modify storage astrbot:data stack append value {}


# 检查世界总怪量
execute \
    store result score curr_mob_num astr.func_var \
    if entity @e[tag=astr.is_mob]
execute \
    if score curr_mob_num astr.func_var > max_mob_num astr.config \
    run return -114514


# 投色子
execute \
    store result score roll_result astr.func_var \
    run random value 1..1000
scoreboard players set roll_result astr.func_var 1

execute \
    unless score roll_result astr.func_var <= monster_spawn_rate astr.config \
    run return -1919810


# 刷怪

#决定刷怪量（单位：只）
execute \
    store result score spawn_num astr.func_var \
    run random value 5..10

#递归生成实体
function astrbot:generate_monsters/try_generate/1

# 分散
spreadplayers ~ ~ 8 48 false @e[type=zombie, tag=astr.new_mob]

# 删除 “新生成的怪物” 标签
tag @e[type=zombie, tag=astr.new_mob] remove astr.new_mob


# 弹出
data remove storage astrbot:data stack[-1]