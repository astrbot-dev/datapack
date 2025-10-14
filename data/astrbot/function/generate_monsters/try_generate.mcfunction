# 尝试一次刷怪
# 调用自tick


# 新栈帧
data modify storage astrbot:data stack append value {}


# 检查世界总怪量
execute \
    store result score curr_mob_num astr.func_var \
    if entity @e[tag=astr]
execute \
    if score curr_mob_num astr.func_var > max_mob_num astr.func_var \
    run return -114514


# 投色子
execute \
    store result score roll_result astr.func_var \
    run random value 0..1000
execute \
    unless score roll_result astr.func_var <= monster_spawn_rate astr.config \
    run return -1919810


# 刷怪
# 等会写


# 弹出
data remove storage astrbot:data stack[-1]