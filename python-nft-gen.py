import json
import os
import sys
from PIL import Image

# Main images dir
baseDir = './images/'

# File system, load images
traitsPath = os.listdir(baseDir)
print(traitsPath)
traitsJSON = json.encoder(traitsPath)
print(traitsJSON)

for root,directories,files in os.walk(baseDir, topdown=False):
    for name in files:
        print(os.path.join(root,name))
    for name in directories:
        print(os.path.join(root,name))

exit()

# Load layer files
background = './images/Aqua.png'
fur = './images/Brown.png'
clothes = './images/Black Hoodie.png'
eyes = './images/Angry.png'
accessories = './images/3D Glasses.png'
nose = './images/Ball Gag.png'
hats = './images/Air Helmet.png'

# Open images
backgroundLayer = Image.open(background)
furLayer = Image.open(fur)
clothesLayer = Image.open(clothes)
eyesLayer = Image.open(eyes)
accessoriesLayer = Image.open(accessories)
noseLayer = Image.open(nose)
hatsLayer = Image.open(hats)

# Convert to RGBA
backgroundLayer = backgroundLayer.convert("RGBA")
furLayer =furLayer.convert("RGBA")
clothesLayer = clothesLayer.convert("RGBA")
eyesLayer = eyesLayer.convert("RGBA")
accessoriesLayer = accessoriesLayer.convert("RGBA")
noseLayer = noseLayer.convert("RGBA")
hatsLayer = hatsLayer.convert("RGBA")

backgroundLayer.paste(furLayer, None, furLayer)
backgroundLayer.paste(clothesLayer, None, clothesLayer)
backgroundLayer.paste(eyesLayer, None, eyesLayer)
backgroundLayer.paste(accessoriesLayer, None, accessoriesLayer)
backgroundLayer.paste(noseLayer, None, noseLayer)
backgroundLayer.paste(hatsLayer, None, hatsLayer)

# Output new image
backgroundLayer.save("trail-layer-mask.png", format="png")