execute if entity @a[distance=6.., limit=1] run scoreboard players set @s botai.vel 2800
execute positioned as @p run function botai:simple_follow/step
