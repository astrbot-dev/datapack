data modify storage astrbot:temp input set value "backpack"
execute on vehicle if function astrbot:bot/has_module run function astrbot:module/backpack/main

data remove entity @s interaction
