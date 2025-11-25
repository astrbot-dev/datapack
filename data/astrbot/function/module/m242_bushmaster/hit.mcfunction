particle minecraft:gust ^ ^ ^-0.5 0 0 0 0 1 force
execute positioned ~ ~ ~ as @e[distance=..2] run damage @s 10 astrbot:m242
playsound minecraft:entity.wind_charge.wind_burst ambient @a ~ ~ ~
kill @s