#> astrbot:terminal/deployed/main

# 外置背包
data modify storage astrbot:temp input set value "backpack"
execute on vehicle if function astrbot:data/module/has_module run function astrbot:module/backpack/main

data remove entity @s interaction
