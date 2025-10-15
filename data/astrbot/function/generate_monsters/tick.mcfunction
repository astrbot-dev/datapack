# 玩家机器入群系内时每tick尝试刷怪
execute \
    as @a \
    at @s \
    if biome ~ ~ ~ minecraft:rbot_wasteland \
    run function astrbot:generate_monsters/try_generate