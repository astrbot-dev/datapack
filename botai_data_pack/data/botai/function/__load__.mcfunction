scoreboard objectives add botai dummy
scoreboard objectives add botai.current.x dummy
scoreboard objectives add botai.current.y dummy
scoreboard objectives add botai.current.z dummy
scoreboard objectives add botai.manhattan dummy
scoreboard objectives add botai.vel dummy
scoreboard players set -1 botai -1
execute in overworld run function botai:__load__/nested_execute_0
