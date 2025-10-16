
# 刷一只
execute \
    positioned ^ ^ ^-8 \
    summon zombie \
    run function astrbot:generate_monsters/try_generate/2

# 递归
scoreboard players operation spawn_num astr.func_var -= 1 astr.consts
execute \
    if score spawn_num astr.func_var matches 1.. \
    run function astrbot:generate_monsters/try_generate/1
