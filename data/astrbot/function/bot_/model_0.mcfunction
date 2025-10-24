#地面型模型
execute if predicate astrbot:bot/moving_ground on passengers run item modify entity @s contents astrbot:bot/ground/moving

execute unless predicate astrbot:bot/moving_ground on passengers run item modify entity @s contents astrbot:bot/ground/stop