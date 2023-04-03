import os
from PIL import Image

# Create the "images" directory if it doesn't already exist
if not os.path.exists("images"):
    os.mkdir("images")

# Iterate over all files in the current working directory
for filename in os.listdir():
    if filename.endswith(".jpg") or filename.endswith(".jpeg") or filename.endswith(".png"):

        # Open the image file and get its dimensions
        with Image.open(filename) as img:
            width, height = img.size

            # Determine the maximum allowed dimension (either width or height)
            max_dim = 800
            if width > height:
                new_width = max_dim
                new_height = int(height * (max_dim / width))
            else:
                new_height = max_dim
                new_width = int(width * (max_dim / height))

            # Resize the image while conserving the aspect ratio
            img = img.resize((new_width, new_height))

            # Save the compressed image in the "images" directory
            img.save(os.path.join("images", filename))
