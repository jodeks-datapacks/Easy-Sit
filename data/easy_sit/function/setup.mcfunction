scoreboard objectives add jodek.config dummy
execute unless score &easy_sit_load_message jodek.config = &easy_sit_load_message jodek.config run scoreboard players set &easy_sit_load_message jodek.config 1
execute unless score &easy_sit_advancements jodek.config = &easy_sit_advancements jodek.config run scoreboard players set &easy_sit_advancements jodek.config 1

scoreboard objectives add easy_sit.config trigger

scoreboard objectives add easy_sit.image dummy

scoreboard objectives add sit trigger

scoreboard objectives add easy_sit.looking_down dummy

function easy_sit:config/image

function easy_sit:config/set_default

kill @e[type=interaction,tag=easy_sit]
kill @e[type=block_display,tag=easy_sit]

tag @a remove sitting_anywhere
tag @a remove sitting_interaction