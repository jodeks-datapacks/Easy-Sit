# Copy current pixel
data modify storage easysit:image current.pixel_color set \
  from storage easysit:image current.image_data[0]
data modify storage easysit:image current.description_text set \
  from storage easysit:image current.description[0]

scoreboard players add $index.image_data easysit.image 1

# Calculate column
scoreboard players operation $index.column easysit.image = $index.image_data easysit.image
scoreboard players operation $index.column easysit.image %= $width easysit.image

# Calculate row
scoreboard players operation $index.row easysit.image = $index.image_data easysit.image
scoreboard players operation $index.row easysit.image /= $width easysit.image

# Append start spacing
execute if score $index.column easysit.image matches 1 run \
  function easysit:image/process/append/blank

# Append colored pixel
execute unless data storage easysit:image current{pixel_color: ''} run \
  function easysit:image/process/append/pixel
# Append background pixel
execute if data storage easysit:image current{pixel_color: ''} run \
  function easysit:image/process/append/background

# Append description
execute if score $index.column easysit.image matches 0 run \
    function easysit:image/process/image_end/description

# Remove first element from the image_data array
data remove storage easysit:image current.image_data[0]
# Loop over rows
execute if score $index.row easysit.image < $height easysit.image run \
  function easysit:image/process/loop_over_image_data
 