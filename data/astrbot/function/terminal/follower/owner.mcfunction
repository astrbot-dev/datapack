##此函数的上下文：
#执行者——无人机的根实体（狼）

#这一步是获取无人机的数据：
execute on passengers run data modify storage astrbot:player temp set from entity @s item.components."minecraft:custom_data".astrbot
#这一步是将无人机的数据存起来以待输入对话框：
execute on owner if entity @s[tag=astrbot_owner] run data modify storage astrbot:player follower_bot set from storage astrbot:player temp
#数据好多，人要坏掉了❤


dialog show @s {\
  actions:[\
    {action:{command:"trigger astrbot.follower_terminal set 1",type:"minecraft:run_command"},label:{color:"green",translate:"dialog.astrbot.terminal.follower",with:["1"]}}\
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
  title:{translate:"dialog.astrbot.terminal.title"},\
  type:"minecraft:multi_action",\
}