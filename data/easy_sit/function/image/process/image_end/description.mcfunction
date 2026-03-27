# Append blank
function easy_sit:image/process/append/blank

data modify storage easy_sit:image data.tellraw append \
  from storage easy_sit:image data.current.description_text

# Append blank
function easy_sit:image/process/append/blank

# Append line_break
execute unless score $index.image_data easy_sit.image = $length easy_sit.image \
  run function easy_sit:image/process/append/line_break

# Remove first element from the description
data remove storage easy_sit:image data.current.description[0]
 