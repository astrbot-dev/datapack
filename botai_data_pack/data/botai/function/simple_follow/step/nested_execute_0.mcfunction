execute store result storage botai:io vel double 0.00009 run scoreboard players get @s botai.vel
execute store result score @s botai.vel run data get storage botai:io vel 10000
execute positioned ^ ^ ^-0.2 rotated as @s positioned ^ ^ ^-1 facing entity @s feet positioned as @s run function botai:simple_follow/step/forward with storage botai:io
execute at @s run function botai:simple_follow/step/turn_by_block
