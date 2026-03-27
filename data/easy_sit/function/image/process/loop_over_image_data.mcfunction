# Copy current pixel
data modify storage easy_sit:image data.current.pixel_color set \
  from storage easy_sit:image data.current.image_data[0]
data modify storage easy_sit:image data.current.description_text set \
  from storage easy_sit:image data.current.description[0]

scoreboard players add $index.image_data easy_sit.image 1

# Calculate column
scoreboard players operation $index.column easy_sit.image = $index.image_data easy_sit.image
scoreboard players operation $index.column easy_sit.image %= $width easy_sit.image

# Calculate row
scoreboard players operation $index.row easy_sit.image = $index.image_data easy_sit.image
scoreboard players operation $index.row easy_sit.image /= $width easy_sit.image

# Append start spacing
execute if score $index.column easy_sit.image matches 1 run \
  function easy_sit:image/process/append/blank

# Append colored pixel
execute unless data storage easy_sit:image data.current{pixel_color: ''} run \
  function easy_sit:image/process/append/pixel
# Append background pixel
execute if data storage easy_sit:image data.current{pixel_color: ''} run \
  function easy_sit:image/process/append/background

# Append description
execute if score $index.column easy_sit.image matches 0 run \
    function easy_sit:image/process/image_end/description

# Remove first element from the image_data array
data remove storage easy_sit:image data.current.image_data[0]
# Loop over rows
execute if score $index.row easy_sit.image < $height easy_sit.image run \
  function easy_sit:image/process/loop_over_image_data
 