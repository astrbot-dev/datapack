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

## ★记分板标签★

`active_defence_system`：无人机装载主动防御模块时，即被赋予该标签。  
`allowtrg`：不知道这个标签是什么意思。  
`apshit`：在主动防御功能中用于防止重复击中。  
`bullet`：不知道这个标签是什么意思。  
`fall_prevention_cool_down`：玩家若拥有该标签，即处于摔落保护模块的冷却时间。  
`fire`：不知道这个标签是什么意思。  
`hit`：不知道这个标签是什么意思。  
`hit1`：不知道这个标签是什么意思。  
`hitb`：不知道这个标签是什么意思。  
`laserlock`：临时标签，用于标记本次击打的目标实体。  
`M134`：不知道这个标签是什么意思。  
`marker`：不知道这个标签是什么意思。  
`negative_effect_generator`：无人机装载负面效果产生模块时，即被赋予该标签。  
`pdg`：不知道这个标签是什么意思。  
`prefire`：不知道这个标签是什么意思。  
`sonic_boom_transmitter`：无人机装载音波发射模块时，即被赋予该标签。  
`sonic_boom_transmitter_target`：音波发射模块的目标实体。  
`testing`：不知道这个标签是什么意思。  

## ★翻译标识符（zh_cn）★  

```json
{
  "item.astrbot.active_defence_system": "主动防御系统",
  "item.astrbot.active_defence_system.lore": "拦截可能正在朝你飞过来的弹射物！",
  "item.astrbot.fall_prevention": "摔落保护",
  "item.astrbot.fall_prevention.lore": "禁止高空抛物，冷却时间1分钟",
  "item.astrbot.m242_bushmaster": "M242链式炮",
  "item.astrbot.m242_bushmaster.lore": "这个模块可以发射炮弹！",
  "item.astrbot.missile_launcher: "导弹发射器",
  "item.astrbot.missile_launcher.lore": "指哪打哪",
  "item.astrbot.module": "无人机模块",
  "item.astrbot.negative_effect_generator": "负面效果产生器",
  "item.astrbot.negative_effect_generator.lore": "对周围20格以内的亡灵生物、节肢生物和",
  "item.astrbot.negative_effect_generator.lore1": "袭击参与者施加10秒长的缓慢、虚弱效果，",
  "item.astrbot.negative_effect_generator.lore2": "冷却时间30秒",
  "item.astrbot.sonic_boom_transmitter": "音波发射器",
  "item.astrbot.sonic_boom_transmitter.lore": "让你的无人机像监守者那样发射音波"
}
```

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
