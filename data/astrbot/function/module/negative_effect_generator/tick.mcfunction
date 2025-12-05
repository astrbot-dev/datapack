execute at @e[tag=negative_effect_generator] as @e[type=#astrbot:negative_module_influenced,distance=..40] run function astrbot:module/negative_effect_generator/main

execute at @e[tag=negative_effect_generator] positioned ^ ^2.5 ^1 run function astrbot:module/negative_effect_generator/particle


schedule function astrbot:module/negative_effect_generator/tick 15s