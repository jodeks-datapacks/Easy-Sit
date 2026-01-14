scoreboard players set @a easysit.config 0

$dialog show @s {\
  type:"minecraft:multi_action",\
  title:"Easy Sit Config",\
  inputs:[\
    {\
      type:"minecraft:boolean",\
      key:"dialog_right_click_sit",\
      label:"Right Click Sit",\
      initial:$(right_click_sit),\
      on_true:"1",\
      on_false:"0"\
    }\
  ],\
  can_close_with_escape:1b,\
  exit_action:{\
    label:"Save",\
    action:{\
      type:"dynamic/run_command",\
      template:"function easysit:config/update_config {dialog_right_click_sit:$(dialog_right_click_sit)}"\
    }\
  },\
  actions:[\
    {\
      label:"Save",\
      action:{\
        type:"dynamic/run_command",\
        template:"function easysit:config/update_config {dialog_right_click_sit:$(dialog_right_click_sit)}"\
      }\
    }\
  ]\
}
