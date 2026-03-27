#> easy_sit:image/set_image_data
#
# This function sets the image data.
#
# @input $(image_data) {string[][]} The data to set  
# @input $(width) {number} The width of the image  
# @input $(height) {number} The height of the image  
# @input $(background_color) {string} The background color of the image  
# @input $(description) {string[]} The description on the right hand side  
# @writes storage easy_sit:image data.image_data  
# @writes storage easy_sit:image data.width  
# @writes storage easy_sit:image data.height  
# @writes storage easy_sit:image data.background_color  
# @writes storage easy_sit:image data.description  
# @writes storage easy_sit:image data.pixel_character.blank  
# @writes storage easy_sit:image data.pixel_character.chat  
# @writes storage easy_sit:image data.pixel_character.lore

data remove storage easy_sit:image data.image_data
data remove storage easy_sit:image data.width
data remove storage easy_sit:image data.height
data remove storage easy_sit:image data.background_color
data remove storage easy_sit:image data.description

$data modify storage easy_sit:image data.image_data set value $(image_data)
$data modify storage easy_sit:image data.width set value $(width)
$data modify storage easy_sit:image data.height set value $(height)
$data modify storage easy_sit:image data.background_color set value "$(background_color)"
$data modify storage easy_sit:image data.description set value $(description)

data modify storage easy_sit:image data.pixel_character.blank set value "　"
data modify storage easy_sit:image data.pixel_character.pixel set value "▌▌"
data modify storage easy_sit:image data.pixel_character.line_break set value '\n'

function easy_sit:image/process/generate
