import json
import os
import sys
import random
from typing import Counter
from PIL import Image

# Main images dir
baseImageDir = './images/'
outputDir = './output/'

imageCSV = './data.csv'
metadataTemplateFile = './metadata/metadatatemplate.json'

counter = 2 # start at 2.png due to pre gen image

metadataTemplateFile = open(metadataTemplateFile,)
metadataTemplate = json.load(metadataTemplateFile)

def getImageName(data): ## accepts array[x][y] as data, only given the specific attribute
    return data[0]

def getRandom(min, max):
    return random.randrange(min,max,1)


# Generate Metadata


# Write Metadata


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