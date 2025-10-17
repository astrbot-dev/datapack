tag @s add botai.follower
scoreboard players set @s botai.vel 2800
execute on owner if entity @s[distance=..5] at @s anchored eyes positioned ^ ^ ^ run function botai:follow/follow
tag @s remove botai.follower