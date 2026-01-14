# Append blank
function easysit:image/process/append/blank

data modify storage easysit:image tellraw append \
  from storage easysit:image current.description_text

# Append blank
function easysit:image/process/append/blank

# Append line_break
execute unless score $index.image_data easysit.image = $length easysit.image \
  run function easysit:image/process/append/line_break

# Remove first element from the description
data remove storage easysit:image current.description[0]
 