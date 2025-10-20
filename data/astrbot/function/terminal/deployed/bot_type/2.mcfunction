#终端面板数据
data modify storage astrbot:terminal dialog set value {\
  actions:[\
    {\
      action:{\
        template:"trigger astrbot.module_terminal set $(4)$(3)$(2)$(1)",\
        type:"minecraft:dynamic/run_command"\
      },\
      label:{translate:"gui.apply"}\
    },\
    {\
      action:{\
        command:"trigger astrbot.unbind set 1",\
        type:"minecraft:run_command"\
      },\
      label:{translate:"gui.unbinding"}\
    },\
    {\
      label:{translate:"gui.back"}\
    }\
  ],\
  after_action:"close",\
  body:{\
    contents:[\
      "",\
      {translate:"dialog.astrbot.astrbot_serial_number"},\
      {color:"yellow",text:"0"},\
      "\n\n",\
      {bold:true,translate:"dialog.astrbot.terminal.module"},\
      {bold:true,text:" 1  "},\
      {color:"green",hover_event:{action:"show_item",id:"recovery_compass",components:{"minecraft:item_model":"minecraft:acacia_boat","minecraft:item_name":{"translate":"item.astrbot.active_defence_system"},"minecraft:lore":[{"italic":false,"color":"blue","translate":"item.astrbot.module"},{"italic":false,"color":"green","translate":"item.astrbot.active_defence_system.lore"}]}},translate:"dialog.astrbot.see_module_info"},\
      "\n\n",\
      {bold:true,translate:"dialog.astrbot.terminal.module"},\
      {bold:true,text:" 2  "},\
      {color:"green",hover_event:{action:"show_item",id:"recovery_compass",components:{"minecraft:item_model":"minecraft:acacia_boat","minecraft:item_name":{"translate":"item.astrbot.active_defence_system"},"minecraft:lore":[{"italic":false,"color":"blue","translate":"item.astrbot.module"},{"italic":false,"color":"green","translate":"item.astrbot.active_defence_system.lore"}]}},translate:"dialog.astrbot.see_module_info"},\
      "\n\n",\
      {bold:true,translate:"dialog.astrbot.terminal.module"},\
      {bold:true,text:" 3  "},\
      {color:"green",hover_event:{action:"show_item",id:"recovery_compass",components:{"minecraft:item_model":"minecraft:acacia_boat","minecraft:item_name":{"translate":"item.astrbot.active_defence_system"},"minecraft:lore":[{"italic":false,"color":"blue","translate":"item.astrbot.module"},{"italic":false,"color":"green","translate":"item.astrbot.active_defence_system.lore"}]}},translate:"dialog.astrbot.see_module_info"},\
      "\n\n",\
      {bold:true,translate:"dialog.astrbot.terminal.module"},\
      {bold:true,text:" 4  "},\
      {color:"green",hover_event:{action:"show_item",id:"recovery_compass",components:{"minecraft:item_model":"minecraft:acacia_boat","minecraft:item_name":{"translate":"item.astrbot.active_defence_system"},"minecraft:lore":[{"italic":false,"color":"blue","translate":"item.astrbot.module"},{"italic":false,"color":"green","translate":"item.astrbot.active_defence_system.lore"}]}},translate:"dialog.astrbot.see_module_info"},\
    ],\
    type:"plain_message",\
    width:300\
  },\
  inputs:[\
    {\
      key:"1",\
      label:[\
        {translate:"dialog.astrbot.terminal.module"},\
        " 1"\
      ],\
      options:[\
        {\
          display:{color:"red",translate:"dialog.astrbot.terminal.disable"},\
          id:"0"\
        },\
        {\
          display:{color:"green",translate:"dialog.astrbot.terminal.enable"},\
          id:"1",\
          initial:true\
        }\
      ],\
      type:"minecraft:single_option"\
    },\
    {\
      key:"2",\
      label:[\
        {translate:"dialog.astrbot.terminal.module"},\
        " 2"\
      ],\
      options:[\
        {\
          display:{color:"red",translate:"dialog.astrbot.terminal.disable"},\
          id:"0"\
        },\
        {\
          display:{color:"green",translate:"dialog.astrbot.terminal.enable"},\
          id:"1",\
          initial:true\
        }\
      ],\
      type:"minecraft:single_option"\
    },\
    {\
      key:"3",\
      label:[\
        {\
          translate:"dialog.astrbot.terminal.module"\
        },\
        " 3"\
      ],\
      options:[\
        {\
          display:{color:"red",translate:"dialog.astrbot.terminal.disable"},\
          id:"0"\
        },\
        {\
          display:{color:"green",translate:"dialog.astrbot.terminal.enable"},\
          id:"1",\
          initial:true\
        }\
      ],\
      type:"minecraft:single_option"\
    },\
    {\
      key:"4",\
      label:[\
        {\
          translate:"dialog.astrbot.terminal.module"\
        },\
        " 4"\
      ],\
      options:[\
        {\
          display:{color:"red",translate:"dialog.astrbot.terminal.disable"},\
          id:"0"\
        },\
        {\
          display:{color:"green",translate:"dialog.astrbot.terminal.enable"},\
          id:"4",\
          initial:true\
        }\
      ],\
      type:"minecraft:single_option"\
    }\
  ],\
  pause:false,\
  title:{translate:"dialog.astrbot.terminal.title"},\
  type:"minecraft:multi_action"\
}
#获取模块信息显示在对话框
execute unless data entity @s item.components."minecraft:custom_data".astrbot.modules[{slot:0b}] run data modify storage astrbot:terminal dialog.body.contents[6].hover_event set value {action:"show_text",value:{color:"red",translate:"item.astrbot.no_module"}}
execute unless data entity @s item.components."minecraft:custom_data".astrbot.modules[{slot:1b}] run data modify storage astrbot:terminal dialog.body.contents[10].hover_event set value {action:"show_text",value:{color:"red",translate:"item.astrbot.no_module"}}
execute unless data entity @s item.components."minecraft:custom_data".astrbot.modules[{slot:2b}] run data modify storage astrbot:terminal dialog.body.contents[14].hover_event set value {action:"show_text",value:{color:"red",translate:"item.astrbot.no_module"}}
execute unless data entity @s item.components."minecraft:custom_data".astrbot.modules[{slot:3b}] run data modify storage astrbot:terminal dialog.body.contents[18].hover_event set value {action:"show_text",value:{color:"red",translate:"item.astrbot.no_module"}}