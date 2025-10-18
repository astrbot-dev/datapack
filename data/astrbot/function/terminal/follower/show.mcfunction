dialog show @s {\
  actions:[\
    {\
      action:{\
        dialog:{\
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
          title:{translate:"dialog.astrbot.terminal.title"},\
          type:"minecraft:multi_action"\
        },\
        type:"minecraft:show_dialog"\
      },\
      label:"第1个无人机"\
    },\
    {label:"第2个无人机"},{label:"第3个无人机"}\
  ],\
  body:[\
    {\
      contents:[\
        "",\
        {bold:true,color:"blue",translate:"dialog.astrbot.terminal.content"},\
        "$(power)\n\n",\
        {translate:"dialog.astrbot.terminal.content1"}\
      ],\
      type:"minecraft:plain_message"\
    }\
  ],\
  columns:1,\
  title:{translate:"dialog.astrbot.terminal.title"},\
  type:"minecraft:multi_action",\
}