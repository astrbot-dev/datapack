# README

## ★模块★  

- 模块种类  

=================战斗类模块=================  

√ `active_defence_system` 主动防御模块  

√ `m242_bushmaster` 链式机关枪模块  

√ `negative_effect_generator` 负面效果产生模块  

√ `sonic_boom_transmitter` 音波发射模块  

√ `missile_launcher` 导弹发射模块  

=================探索类模块=================  

automatic_repairment 自我修复模块  

external_backpack 外置背包模块  

√ `fall_prevention` 摔落保护模块  

guidance 引路模块  

mineral_detector 矿物检测模块  

- 模块自定义数据  

```txt
（复合标签）minecraft:custom_data
  └（复合标签）astrbot
    └（字符串）name: 此模块的命名空间ID。
    └（字符串）type: 必为module，表示此物品为一个模块。
```

## ★底盘★

底盘分为三种：地面跟随型、空中跟随型、非跟随型。  \
地面跟随型会自动跟随，初始具有标签：`astrbot_ground`和`astrbot_follow`\
空中跟随型初始具有标签：`astrbot_air`和`astrbot_follow`\

`astrbot_follow`控制是否跟随。当持有`astrbot_follow`标签时会跟随玩家，去除时则不会跟随。 \

非跟随型具有标签：`astrbot_heavy`会自动吸附周围空置的矿车或船，除此之外不会移动，无重力。

## ★记分板标签★

`active_defence_system`：无人机装载主动防御模块时，即被赋予该标签。  \
`allowtrg`：不知道这个标签是什么意思。  \
`apshit`：在主动防御功能中用于防止重复击中。  \
`bullet`：不知道这个标签是什么意思。  \
`fall_prevention_cool_down`：玩家若拥有该标签，即处于摔落保护模块的冷却时间。  \
`fire`：不知道这个标签是什么意思。  \
`hit`：不知道这个标签是什么意思。  \
`hit1`：不知道这个标签是什么意思。  \
`hitb`：不知道这个标签是什么意思。  \
`laserlock`：临时标签，用于标记本次击打的目标实体。  \
`M134`：不知道这个标签是什么意思。  \
`marker`：不知道这个标签是什么意思。  \
`negative_effect_generator`：无人机装载负面效果产生模块时，即被赋予该标签。  \
`pdg`：不知道这个标签是什么意思。  \
`prefire`：不知道这个标签是什么意思。  \
`sonic_boom_transmitter`：无人机装载音波发射模块时，即被赋予该标签。  \
`sonic_boom_transmitter_target`：音波发射模块的目标实体。  \
`testing`：不知道这个标签是什么意思。  \

## ★接口★

### 模块启动方式  

```mcfunction
execute as <无人机> at @s run function astrbot:module/<模块>/enable
```

可用模块参数见上文。

### 模块关闭方式

```mcfunction
execute as <无人机> at @s run function astrbot:module/<模块>/disable
```

## ★存储astrbot:player数据格式（用于终端）★

```txt
（复合标签）根标签
  ├（列表）astrbot：机器人数据，最多只能有三个元素。
  │ └（复合标签）一个机器人。
  │   ├（列表）modules：机器人装载的模块信息。
  │   │ ├（布尔值）enabled：模块是否启用。
  │   │ ├（复合标签）module：模块的信息。和模块物品的custom_data.astrbot信息一致。
  │   │ │ └（复合标签）astrbot
  │   │ │   ├（字符串）name: 此模块的命名空间ID。
  │   │ │   └（字符串）type: 必为module，表示此物品为一个模块。
  │   │ └（字节型）slot：槽位编号。从0开始。槽位编号决定了模块显示在机器人的哪个部位。
  │   ├（字节型）type：该机器人的底盘类型，可用值：0跟随/地面，1跟随/空中，2非跟随/中型，3非跟随/重型。
  │   非跟随机器人额外标签：
  │   ├（整型）power：电量。
  │   ├（列表）Inventory：物品栏。
  │   中型机器人额外标签
  │   ├（列表）home_pos：机器人活动范围的中心，必须由三个双精度浮点数组成。
  │   └（双精度浮点数）home_radius：机器人活动范围的半径。
  └（整型）power：玩家的电量。
```