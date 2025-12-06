## 电量属性定义格式：
## custom_data:{
##  $(attribute):{
##      $(slot):{
##          type:(0b/1b/2b),  //->对应add,multiply_base,multiply_total，但后两者为直接乘而非先加1
##          amount:(float)    //->保留两位小数
##      }
##  }
## }

# init
scoreboard players operation @s astrbot.player_attribute_base = @s astrbot.player_power_regen_base
scoreboard players operation @s astrbot.player_attribute_base *= #100 astrbot.player_attribute_base
scoreboard players set @s astrbot.player_attribute_add 0
scoreboard players set @s astrbot.player_attribute_mul 100
scoreboard players set @s astrbot.player_attribute_mul_total 100


# equipment
data modify storage astrbot:temp attribute set value {type:0b,amount:0}
data modify storage astrbot:temp attribute set from entity @s equipment.head.components."minecraft:custom_data".player_power_regen.head
function astrbot:player/tick/bettery_attribute/attribute_process

data modify storage astrbot:temp attribute set value {type:0b,amount:0}
data modify storage astrbot:temp attribute set from entity @s equipment.chest.components."minecraft:custom_data".player_power_regen.chest
function astrbot:player/tick/bettery_attribute/attribute_process

data modify storage astrbot:temp attribute set value {type:0b,amount:0}
data modify storage astrbot:temp attribute set from entity @s equipment.legs.components."minecraft:custom_data".player_power_regen.legs
function astrbot:player/tick/bettery_attribute/attribute_process

data modify storage astrbot:temp attribute set value {type:0b,amount:0}
data modify storage astrbot:temp attribute set from entity @s equipment.feet.components."minecraft:custom_data".player_power_regen.feet
function astrbot:player/tick/bettery_attribute/attribute_process

data modify storage astrbot:temp attribute set value {type:0b,amount:0}
data modify storage astrbot:temp attribute set from entity @s equipment.mainhand.components."minecraft:custom_data".player_power_regen.mainhand
function astrbot:player/tick/bettery_attribute/attribute_process

data modify storage astrbot:temp attribute set value {type:0b,amount:0}
data modify storage astrbot:temp attribute set from entity @s equipment.offhand.components."minecraft:custom_data".player_power_regen.offhand
function astrbot:player/tick/bettery_attribute/attribute_process

# calculate

scoreboard players operation @s astrbot.player_attribute_base += @s astrbot.player_attribute_add
scoreboard players operation @s astrbot.player_attribute_base *= @s astrbot.player_attribute_mul
scoreboard players operation @s astrbot.player_attribute_base /= #100 astrbot.player_attribute_base
scoreboard players operation @s astrbot.player_attribute_base *= @s astrbot.player_attribute_mul_total
scoreboard players operation @s astrbot.player_attribute_base /= #100 astrbot.player_attribute_base
scoreboard players operation @s astrbot.player_attribute_base /= #100 astrbot.player_attribute_base

scoreboard players operation @s astrbot.player_power_regen = @s astrbot.player_attribute_base