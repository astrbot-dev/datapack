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
      {translate:"dialog.astrbot.power"},\
      {color:"blue",text:"0"},\
      "\n\n",\
      {bold:true,translate:"dialog.astrbot.terminal.module"},\
      {bold:true,text:" 1  "},\
      {color:"green",hover_event:{action:"show_text",value:{color:"red",translate:"dialog.astrbot.no_module"}},translate:"dialog.astrbot.see_module_info"},\
      "\n\n",\
      {bold:true,translate:"dialog.astrbot.terminal.module"},\
      {bold:true,text:" 2  "},\
      {color:"green",hover_event:{action:"show_text",value:{color:"red",translate:"dialog.astrbot.no_module"}},translate:"dialog.astrbot.see_module_info"},\
      "\n\n",\
      {bold:true,translate:"dialog.astrbot.terminal.module"},\
      {bold:true,text:" 3  "},\
      {color:"green",hover_event:{action:"show_text",value:{color:"red",translate:"dialog.astrbot.no_module"}},translate:"dialog.astrbot.see_module_info"},\
      "\n\n",\
      {bold:true,translate:"dialog.astrbot.terminal.module"},\
      {bold:true,text:" 4  "},\
      {color:"green",hover_event:{action:"show_text",value:{color:"red",translate:"dialog.astrbot.no_module"}},translate:"dialog.astrbot.see_module_info"},\
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
          id:"1",\
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
execute unless data entity @s item.components."minecraft:custom_data".astrbot.modules[{slot:0b}] run data modify storage astrbot:terminal dialog.body.contents[9].hover_event set value {action:"show_text",value:{color:"red",translate:"dialog.astrbot.no_module"}}
execute unless data entity @s item.components."minecraft:custom_data".astrbot.modules[{slot:1b}] run data modify storage astrbot:terminal dialog.body.contents[13].hover_event set value {action:"show_text",value:{color:"red",translate:"dialog.astrbot.no_module"}}
execute unless data entity @s item.components."minecraft:custom_data".astrbot.modules[{slot:2b}] run data modify storage astrbot:terminal dialog.body.contents[17].hover_event set value {action:"show_text",value:{color:"red",translate:"dialog.astrbot.no_module"}}
execute unless data entity @s item.components."minecraft:custom_data".astrbot.modules[{slot:3b}] run data modify storage astrbot:terminal dialog.body.contents[21].hover_event set value {action:"show_text",value:{color:"red",translate:"dialog.astrbot.no_module"}}
execute if data entity @s item.components."minecraft:custom_data".astrbot.modules[{slot:0b}].module run function astrbot:terminal/deployed/bot_type/slot/0
execute if data entity @s item.components."minecraft:custom_data".astrbot.modules[{slot:1b}].module run function astrbot:terminal/deployed/bot_type/slot/1
execute if data entity @s item.components."minecraft:custom_data".astrbot.modules[{slot:2b}].module run function astrbot:terminal/deployed/bot_type/slot/2
execute if data entity @s item.components."minecraft:custom_data".astrbot.modules[{slot:3b}].module run function astrbot:terminal/deployed/bot_type/slot/3
#各槽位当前禁用情况
execute if data entity @s item.components."minecraft:custom_data".astrbot.modules[{slot:0b,enabled:false}] run data remove storage astrbot:terminal dialog.inputs[0].options[1].initial
execute if data entity @s item.components."minecraft:custom_data".astrbot.modules[{slot:1b,enabled:false}] run data remove storage astrbot:terminal dialog.inputs[1].options[1].initial
execute if data entity @s item.components."minecraft:custom_data".astrbot.modules[{slot:2b,enabled:false}] run data remove storage astrbot:terminal dialog.inputs[2].options[1].initial
execute if data entity @s item.components."minecraft:custom_data".astrbot.modules[{slot:3b,enabled:false}] run data remove storage astrbot:terminal dialog.inputs[3].options[1].initial
#电量
execute on passengers on target store result storage astrbot:terminal temp3 int 1.0 run scoreboard players get @s astrbot.player_power
data modify storage astrbot:terminal dialog.body.contents[5].text set string storage astrbot:terminal temp3