tellraw @a ["",{"text":"Easy Sit","color":"blue","clickEvent":{"action":"open_url","value":"https://modrinth.com/datapack/easy-sit"},"hoverEvent":{"action":"show_text","contents":"modrinth.com/datapack/easy-sit"}},{"text":" loaded - ","clickEvent":{"action":"open_url","value":"https://modrinth.com/datapack/easy-sit"},"hoverEvent":{"action":"show_text","contents":"modrinth.com/datapack/easy-sit"}},{"text":"[1.21]","color":"green","clickEvent":{"action":"open_url","value":"https://modrinth.com/datapack/easy-sit"},"hoverEvent":{"action":"show_text","contents":"modrinth.com/datapack/easy-sit"}},{"text":" ","clickEvent":{"action":"open_url","value":"https://modrinth.com/datapack/easy-sit"},"hoverEvent":{"action":"show_text","contents":"modrinth.com/datapack/easy-sit"}},{"text":"v.1.0.0","color":"dark_green","clickEvent":{"action":"open_url","value":"https://modrinth.com/datapack/easy-sit"},"hoverEvent":{"action":"show_text","contents":"modrinth.com/datapack/easy-sit"}}]

scoreboard objectives add help.easysit trigger

scoreboard objectives add config.easysit dummy

execute unless score &sit_mode config.easysit = &sit_mode config.easysit run scoreboard players set &sit_mode config.easysit 0

scoreboard objectives add sit trigger



scoreboard objectives add sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add sneak_timer dummy