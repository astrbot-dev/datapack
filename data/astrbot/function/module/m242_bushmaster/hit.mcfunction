particle minecraft:explosion ^ ^ ^-0.5 0 0 0 0 1 force
execute positioned ~-1 ~-1 ~-1 as @e[dx=1,dy=1,dz=1] run damage @s 10 magic
playsound minecraft:entity.dragon_fireball.explode ambient @a ~ ~ ~
kill @s