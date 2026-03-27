#> easy_sit:image/process/generate
#
# This function generates the image data.

data modify storage easy_sit:image data.current.image_data set from storage easy_sit:image data.image_data
data modify storage easy_sit:image data.current.description set from storage easy_sit:image data.description
data modify storage easy_sit:image data.current.pixel_character set from storage easy_sit:image data.pixel_character.pixel

# Reset index score
scoreboard players set $index.image_data easy_sit.image 0
# Set width
execute store result score $width easy_sit.image run data get storage easy_sit:image data.width
# Set height
execute store result score $height easy_sit.image run data get storage easy_sit:image data.height
# Set length
scoreboard players operation $length easy_sit.image = $width easy_sit.image
scoreboard players operation $length easy_sit.image *= $height easy_sit.image
# Clear remaining entries in tellraw
data remove storage easy_sit:image data.tellraw

# Add spacing on top
function easy_sit:image/process/append/line_break
# Loop over image data
function easy_sit:image/process/loop_over_image_data
# Add spacing on bottom
function easy_sit:image/process/append/line_break