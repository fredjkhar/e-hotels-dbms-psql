from PIL import Image
import os

# Define the input and output directories
input_dir = '.'
output_dir = './images'

# Create the output directory if it doesn't already exist
if not os.path.exists(output_dir):
    os.makedirs(output_dir)

# Loop through all files in the input directory
for filename in os.listdir(input_dir):
    # Check if the file is an image (JPEG, PNG, etc.)
    if filename.endswith('.jpg') or filename.endswith('.png'):
        # Open the image file
        with Image.open(os.path.join(input_dir, filename)) as img:
            # Calculate the new width and height
            width, height = img.size
            new_width, new_height = width // 4, height // 4

            # Resize the image while preserving the aspect ratio
            img = img.resize((new_width, new_height), Image.ANTIALIAS)

            # Save the resized image to the output directory
            img.save(os.path.join(output_dir, filename))

