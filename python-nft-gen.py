import json
#import os
#import sys
import random
from typing import Counter
from PIL import Image

# Main images dir
baseDir = './images/'

attributesFile  = open('./attributes.json',)
#attributesFile  = open('./data2.json',)
attributes = json.load(attributesFile)

attributesArray = []
testOutput = []
metadataArray = []

j = 0
tempArray = []

for key, value in attributes.items():
    current_key = attributes[key]
    tempArray = [key]
    for i in current_key:
        tempArray.append(i)
        # for j in i:
        #     new_array.append(j)
    attributesArray.append(tempArray)

def getImageName(data): ## accepts array[x][y] as data, only given the specific attribute
    return data[0]

def getImageWeight(data): ## accepts array[x][y] as data, only given the specific attribute
    return data[1]

def decreaseImageWeight(data): ## accepts array[x][y] as data, only given the specific attribute
    return (data[1] -1)

def getNumAttributes(data):
    return len(data)

def getRandom(min, max):
    return random.randrange(min,max,1)

def getCount(data): ## accepts array[x]
    j = 1 # required offset by 1 due to data structure
    attributeCount = 0
    while j < (len(data)):
        attributeCount += (getImageWeight(data[j]))
        j += 1
    return attributeCount

#print(attributesArray[0])
#print(attributesArray[0][1])
#print(attributesArray[0][1][0])
#print(attributesArray[0][1][1])

## return split data values
#i = 0
#while i < len(attributesArray):
#    j = 1 # required offset by 1 due to data structure
#    while j < (len(attributesArray[i])):
#        print(getImageName(attributesArray[i][j]))
#        print(getImageWeight(attributesArray[i][j]))
#        j += 1
#    i += 1

## randomly generate attribte values
#i = 0
#while i < len(attributesArray):
#    max = getNumAttributes(attributesArray[i])
#    rand = getRandom(1,max)
#    print(attributesArray[i][0] + ': ' + str(rand))
#    i += 1


## count max number of attributes
print("Total number of variations: " + str(getCount(attributesArray[0])))

## generate test output of random layer selection
i = 0
counter = getCount(attributesArray[0])
imageTotal = 0
while counter >= 0: # stop when getCount = 0, ie. no more attributes left
    while i < len(attributesArray[i]):
        max = getNumAttributes(attributesArray[i])
        rand = getRandom(1,max)
        while getImageWeight(attributesArray[i][rand]) <= 0: # loop until find an attribute with 
            rand = getRandom(1,max)
        imageTotal +=1
        print("Count("+ str(counter) + ") Total (" + str(imageTotal) + ") " + attributesArray[i][rand][0] + ' Rand: ' + str(rand))
        print("Old Weight: " + str(getImageWeight(attributesArray[i][rand])))
        attributesArray[i][rand][1] -= 1 # decrease selected image wieght by 1
        print("New Weight: " + str(getImageWeight(attributesArray[i][rand])))
        
        i += 1
        if i >= len(attributesArray):
            i = 0
    
        counter = getCount(attributesArray[-1])
        if counter <= 0:
            exit()


#print(getImageName(imagesArray[1][1][0]))

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