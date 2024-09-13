scoreboard players set @s help.easysit 0

tellraw @s ["",{"text":"[HELP]","color":"gray"}," ",{"text":"Easy Sit","bold":true},"\n\nChange the way how to sit\n",{"text":"/scoreboard players set &sit_mode config.easysit ","clickEvent":{"action":"copy_to_clipboard","value":"/scoreboard players set &sit_mode config.easysit"},"hoverEvent":{"action":"show_text","contents":"click to copy"},"color":"yellow"},{"text":"value","clickEvent":{"action":"copy_to_clipboard","value":"/scoreboard players set &sit_mode config.easysit"},"hoverEvent":{"action":"show_text","contents":"click to copy"},"color":"yellow","italic":true},"\n",{"text":"value","italic":true}," = 0 = Right click mode --> default\n",{"text":"value","italic":true}," = 1 = Double sneak mode\n\n",{"text":"Right click mode","bold":true},"\n1. Look all the way down\n2. Sneak and unsneak\n3. Press right click\n\n",{"text":"Double sneak mode","bold":true},"\n1. Look all the way down\n2. Double sneak\n\n",{"text":"OR run ","bold":true},{"text":"/trigger sit","bold":true,"color":"yellow"},{"text":" to sit","bold":true},"\n\n",{"text":"To not sit any longer press shift","color":"gray"},"\n\nTo uninstall run:\n",{"text":"/function easysit:uninstall","color":"yellow"},"\n\nThen ",{"text":"delete the file","color":"yellow"}," or do:\n",{"text":"/datapack disable datapack.zip","color":"yellow"},"\n\nRun ",{"text":"/reload","color":"yellow"},"\n\n",{"text":"For the mod:\ndelete the mod.jar and restart the server/client","color":"gray"},"\n\n",{"text":"[LINK] ","color":"gray","clickEvent":{"action":"open_url","value":"https://modrinth.com/datapack/easy-sit"},"hoverEvent":{"action":"show_text","contents":"https://modrinth.com/datapack/easy-sit"}},{"text":"Modrinth Easy Sit","clickEvent":{"action":"open_url","value":"https://modrinth.com/datapack/easy-sit"},"hoverEvent":{"action":"show_text","contents":"https://modrinth.com/datapack/easy-sit"},"color":"dark_purple"},"\n\n",{"text":"[LINK] ","color":"gray","clickEvent":{"action":"open_url","value":"https://discord.gg/ScXkDNHnYX"},"hoverEvent":{"action":"show_text","contents":"discord.gg/ScXkDNHnYX"}},{"text":"Discord Server","color":"blue","clickEvent":{"action":"open_url","value":"https://discord.gg/ScXkDNHnYX"},"hoverEvent":{"action":"show_text","contents":"discord.gg/ScXkDNHnYX"}}]