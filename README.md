★模块★  
- 模块种类  
=================战斗类模块=================  
active_defence_system 主动防御模块
negative_effect_generator 负面效果产生模块  
payload_ejector 炸弹投掷模块  
sonic_boom_transmitter 音波发射模块  
target_goal_controller 索敌控制模块  
=================探索类模块=================  
automatic_repairment 自我修复模块  
external_backpack 外置背包模块  
fall_prevention 摔落保护模块
guidance 引路模块  
mineral_detector 矿物检测模块  
- 模块自定义数据  
````
（复合标签）minecraft:custom_data
  └（复合标签）astrbot
    └（字符串）name: 此模块的命名空间ID。
    └（字符串）type: 必为module，表示此物品为一个模块。
````

★记分板标签★  
`active_defence_system`：无人机装载主动防御模块时，即被赋予该标签。  
`apshit`：在主动防御功能中用于防止重复击中。  
`laserlock`：临时标签，用于标记本次击打的目标实体。  
`negative_effect_generator`：无人机装载负面效果产生模块时，即被赋予该标签。  

★翻译标识符（zh_cn）★  
```
{
  "item.astrbot.active_defence_system": "主动防御系统",
  "item.astrbot.active_defence_system.lore": "拦截可能正在朝你飞过来的弹射物！",
  "item.astrbot.module": "无人机模块",
  "item.astrbot.negative_effect_generator": "负面效果产生器",
  "item.astrbot.negative_effect_generator.lore": "对周围20格以内的亡灵生物、节肢生物和",
  "item.astrbot.negative_effect_generator.lore1": "灾厄村民施加10秒长的缓慢、虚弱效果，",
  "item.astrbot.negative_effect_generator.lore2": "冷却时间30秒"
}
```