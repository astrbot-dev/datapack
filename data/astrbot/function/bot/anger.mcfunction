#尝试消除仇恨
execute if data entity @s AngryAt run attribute @s follow_range modifier add astrbot -1 add_multiplied_total
 
execute unless data entity @s AngryAt run attribute @s follow_range modifier remove astrbot