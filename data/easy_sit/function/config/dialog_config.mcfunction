scoreboard players set @a easy_sit.config 0

$dialog show @s {\
  type:"minecraft:multi_action",\
  title:"Easy Sit Config",\
  inputs:[\
    {\
      type:"minecraft:boolean",\
      key:"dialog_right_click_sit",\
      "label": {\
        "translate": "easy_sit.config.right_click_sit",\
        "fallback": "Right Click Sit"\
      },\
      initial:$(right_click_sit),\
      on_true:"1",\
      on_false:"0"\
    }\
  ],\
  can_close_with_escape:1b,\
  exit_action:{\
    "label": {\
      "translate": "jodek.save",\
      "fallback": "Save"\
    },\
    action:{\
      type:"dynamic/run_command",\
      template:"function easy_sit:config/update_config {dialog_right_click_sit:$(dialog_right_click_sit)}"\
    }\
  },\
  actions:[\
    {\
      "label": {\
        "translate": "jodek.save",\
        "fallback": "Save"\
      },\
      action:{\
        type:"dynamic/run_command",\
        template:"function easy_sit:config/update_config {dialog_right_click_sit:$(dialog_right_click_sit)}"\
      }\
    }\
  ]\
}
