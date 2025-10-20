#终端面板数据
data modify storage astrbot:terminal dialog set value {\
  actions:[\
    {\
      action:{\
        template:"trigger astrbot.module_terminal set $(3)$(2)$(1)",\
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
      {hover_event:{action:"show_item",id:"recovery_compass",components:{"minecraft:item_model":"minecraft:acacia_boat","minecraft:item_name": {"translate":"item.astrbot.active_defence_system"},"minecraft:lore":[{"italic":false,"color":"blue","translate":"item.astrbot.module"},{"italic":false,"color":"green","translate":"item.astrbot.active_defence_system.lore"}]}},object:"atlas",sprite:"item/acacia_boat"},\
      "\n\n",\
      {bold:true,translate:"dialog.astrbot.terminal.module"},\
      {bold:true,text:" 2  "},\
      {hover_event:{action:"show_item",id:"recovery_compass",components:{"minecraft:item_model":"minecraft:acacia_boat","minecraft:item_name": {"translate":"item.astrbot.active_defence_system"},"minecraft:lore":[{"italic":false,"color":"blue","translate":"item.astrbot.module"},{"italic":false,"color":"green","translate":"item.astrbot.active_defence_system.lore"}]}},object:"atlas",sprite:"item/acacia_boat"},\
      "\n\n",\
      {bold:true,translate:"dialog.astrbot.terminal.module"},\
      {bold:true,text:" 3  "},\
      {hover_event:{action:"show_item",id:"recovery_compass",components:{"minecraft:item_model":"minecraft:acacia_boat","minecraft:item_name": {"translate":"item.astrbot.active_defence_system"},"minecraft:lore":[{"italic":false,"color":"blue","translate":"item.astrbot.module"},{"italic":false,"color":"green","translate":"item.astrbot.active_defence_system.lore"}]}},object:"atlas",sprite:"item/acacia_boat"}\
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
    }\
  ],\
  pause:false,\
  title:{translate:"dialog.astrbot.terminal.title"},\
  type:"minecraft:multi_action"\
}