#> easysit:image/process/generate
#
# This function generates the image data.

data modify storage easysit:image current.image_data set from storage easysit:image image_data
data modify storage easysit:image current.description set from storage easysit:image description
data modify storage easysit:image current.pixel_character set from storage easysit:image pixel_character.pixel

# Reset index score
scoreboard players set $index.image_data easysit.image 0
# Set width
execute store result score $width easysit.image run data get storage easysit:image width
# Set height
execute store result score $height easysit.image run data get storage easysit:image height
# Set length
scoreboard players operation $length easysit.image = $width easysit.image
scoreboard players operation $length easysit.image *= $height easysit.image
# Clear remaining entries in tellraw
data remove storage easysit:image tellraw

# Add spacing on top
function easysit:image/process/append/line_break
# Loop over image data
function easysit:image/process/loop_over_image_data
# Add spacing on bottom
function easysit:image/process/append/line_break