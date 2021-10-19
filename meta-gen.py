import json
import csv
import os
import sys
import random
from typing import Counter
from PIL import Image

# Main images dir
baseImageDir = './images/'
outputDir = './output/'

imageCSVFile = './data.csv'
metadataTemplateFile = './metadata/metadatatemplate.json'

counter = 2 # start at 2.png due to pre gen image and ids starting at 1

# Load JSON Template
metadataTemplateFile = open(metadataTemplateFile, 'r')
metadataTemplate = json.load(metadataTemplateFile)

# Load CSV Data
imageCSVFile = open(imageCSVFile, 'r')
csvReader = csv.reader(imageCSVFile)

# Load CSV into List
imageRows = []
for row in csvReader:
    imageRows.append(row)

imageCSVFile.close()

# Strip extension for adding value to meta data
def stripExtension(dataArray):
    i = 0
    ouput = []
    while i < len(dataArray):
        data = dataArray[i]
        split = data.split(".")
        ouput.append(split[0])

        i = i + 1
    
    return ouput

def genImageName(imageID):
    imageName = str(imageID) + '.png'
    return imageName

def genMetadataName(counter):
    metaName = str(counter) + '.json'
    return metaName

def getRandom(min, max):
    return random.randrange(min,max,1)

# Generate Metadata
def genMetadata(imageID, arrayRow, template):
    # Gen datafile name
    i = 0
    traits = []

    dataName = genMetadataName(imageID)
    outFile = outputDir + dataName

    traits = stripExtension(arrayRow)
    template['id'] = imageID

    # Loop insert atributes
    while i < len(traits):
        template['attributes'][i]["value"] = traits[i]
        i = i + 1
    
    print("Saving :", outFile)

    with open(outFile, "w") as data_file:
        json.dump(template, data_file)

    return True


# Generate Image
def genImage(imageID, arrayRow):
    # Gen Image Name
    imageName = genImageName(imageID)
    outFile = outputDir + imageName

    # Load layer files
    background =    baseImageDir + 'Backgrounds/' + arrayRow[0]
    fur =           baseImageDir + 'Fur/' + arrayRow[1]
    clothes =       baseImageDir + 'Clothes/' + arrayRow[2]
    eyes =          baseImageDir + 'Eyes/'+ arrayRow[3]
    accessories =   baseImageDir + 'Accessories/' + arrayRow[4]
    nose =          baseImageDir + 'Nose/' + arrayRow[5]
    hats =          baseImageDir + 'Hats/' + arrayRow[6]

    # Open images
    backgroundLayer =   Image.open(background)
    furLayer =          Image.open(fur)
    clothesLayer =      Image.open(clothes)
    eyesLayer =         Image.open(eyes)
    accessoriesLayer =  Image.open(accessories)
    noseLayer =         Image.open(nose)
    hatsLayer =         Image.open(hats)

    # Convert to RGBA
    backgroundLayer = backgroundLayer.convert("RGBA")
    furLayer = furLayer.convert("RGBA")
    clothesLayer = clothesLayer.convert("RGBA")
    eyesLayer = eyesLayer.convert("RGBA")
    accessoriesLayer = accessoriesLayer.convert("RGBA")
    noseLayer = noseLayer.convert("RGBA")
    hatsLayer = hatsLayer.convert("RGBA")

    # Build the image
    backgroundLayer.paste(furLayer, None, furLayer)
    backgroundLayer.paste(clothesLayer, None, clothesLayer)
    backgroundLayer.paste(eyesLayer, None, eyesLayer)
    backgroundLayer.paste(accessoriesLayer, None, accessoriesLayer)
    backgroundLayer.paste(noseLayer, None, noseLayer)
    backgroundLayer.paste(hatsLayer, None, hatsLayer)

    # Output new image
    backgroundLayer.save(outFile, format="png")

    print("Saved: ", outFile)
    return True

### Generate Images ###
for row in imageRows:
    genImage(counter, row)
    genMetadata(counter, row, metadataTemplate)
    counter += 1
