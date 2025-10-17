tag @s add botai.temp
execute unless entity @e[tag=botai.temp, limit=1, distance=0..] run return run tag @s remove botai.temp
tag @s remove botai.temp
execute unless loaded ~ ~ ~ run return 0
tp 8890812a-c393-41e0-a9aa-4b93aa46927f ~ ~ ~
execute facing entity @s feet positioned as @s facing ^ ^ ^-1 run function botai:simple_follow/step/nested_execute_0
execute in overworld run tp 8890812a-c393-41e0-a9aa-4b93aa46927f 0.0 0.0 0.0
