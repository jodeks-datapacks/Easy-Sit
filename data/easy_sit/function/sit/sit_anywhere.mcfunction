execute as @s at @s run summon minecraft:block_display ~ ~ ~ {Tags:[easy_sit]}

ride @s mount @e[type=block_display,tag=easy_sit,limit=1,sort=nearest]

tag @s add sitting_anywhere