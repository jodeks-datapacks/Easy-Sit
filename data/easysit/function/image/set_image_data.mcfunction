#> easysit:image/set_image_data
#
# This function sets the image data.
#
# @input $(image_data) {string[][]} The data to set  
# @input $(width) {number} The width of the image  
# @input $(height) {number} The height of the image  
# @input $(background_color) {string} The background color of the image  
# @input $(description) {string[]} The description on the right hand side  
# @writes storage easysit:image image_data  
# @writes storage easysit:image width  
# @writes storage easysit:image height  
# @writes storage easysit:image background_color  
# @writes storage easysit:image description  
# @writes storage easysit:image pixel_character.blank  
# @writes storage easysit:image pixel_character.chat  
# @writes storage easysit:image pixel_character.lore

data remove storage easysit:image image_data
data remove storage easysit:image width
data remove storage easysit:image height
data remove storage easysit:image background_color
data remove storage easysit:image description

$data modify storage easysit:image image_data set value $(image_data)
$data modify storage easysit:image width set value $(width)
$data modify storage easysit:image height set value $(height)
$data modify storage easysit:image background_color set value "$(background_color)"
$data modify storage easysit:image description set value $(description)

data modify storage easysit:image pixel_character.blank set value "　"
data modify storage easysit:image pixel_character.pixel set value "▌▌"
data modify storage easysit:image pixel_character.line_break set value '\n'

function easysit:image/process/generate
