execute unless score &right_click_sit easy_sit.config = &right_click_sit easy_sit.config run scoreboard players set &right_click_sit easy_sit.config 1
execute unless data storage easy_sit:root data.right_click_sit run data modify storage easy_sit:root data.right_click_sit set value 1
data modify storage easy_sit:root data.dialog_right_click_sit set value "$(dialog_right_click_sit)"