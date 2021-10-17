import json
#import os
#import sys
import random
from typing import Counter
from PIL import Image

# Main images dir
baseDir = './images/'

#attributesFile  = open('./attributes.json',)
attributesFile  = open('./data2.json',)
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

def increaseImageWeight(data): ## accepts array[x][y] as data, only given the specific attribute
    return (data[1] +1)

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

def isDuplicate(listCheck, fullList):
    # do not sory listCheck
    #for list in fullList:
    for list in fullList:
        check = 0
        i = 0
        if len(list) == len(listCheck):

            while i < len(listCheck):
                if list[i] == listCheck[i]:
                    check += 1
                i += 1
            
            if check == len(list):
                return True
        else:
            print("lists no equal size")
        
    return False

    

def isDuplicateTwo(b, a):
    for i in range(len(a)):
        if a[i] == b:
            print("Duplicate found: " + str(a[i]) + ' = ' + str(b))
            return True
    return False

#print(attributesArray[0])           # ['background', ['background 0', 7], ['background 1', 8]]
#print(attributesArray[0][1])        # ['background 0', 7]
#print(attributesArray[0][1][0])     # background 0
#print(attributesArray[0][1][1])     # 7
#exit()
## count max number of attributes
print("Total number of variations: " + str(getCount(attributesArray[0])))

## generate test output of random layer selection
i = 0
counter = getCount(attributesArray[0])
imageTotal = 0
imageArray = []
while counter >= 0: # stop when getCount = 0, ie. no more attributes left
    tempImageArray = []
    print("Counter: ", counter)
    while i < len(attributesArray[i]):
        #print("Length: ", len(attributesArray[i]))
        max = getNumAttributes(attributesArray[i])
        rand = getRandom(1,max)
        #print("Rand: ", rand)
        
        while getImageWeight(attributesArray[i][rand]) == 0: # loop until find an attribute with generation space left
            rand = getRandom(1,max)
            #print("NEW Rand: ", rand)
            
        tempImageArray.append(rand)

        attributesArray[i][rand][1] -= 1 # decrease selected image wieght by 1
        #print("Current image array: ", tempImageArray)

        #print("Count("+ str(counter) + ") Total (" + str(imageTotal) + ") " + attributesArray[i][rand][0] + ' Rand: ' + str(rand))
        #print("Old Weight: " + str(getImageWeight(attributesArray[i][rand])))

        #print("New Weight: " + str(getImageWeight(attributesArray[i][rand])))
        
        j = i # for use with 
        i += 1
        if i >= len(attributesArray):
            print("\nCurrent Image: ", tempImageArray)
            
            ## duplication check
            #if isDuplicate(tempImageArray, imageArray):
            if isDuplicateTwo(tempImageArray, imageArray):
                print("Diplicate found!")
                i = 0
                tempImageArray = []
                # undo image weight subtraction?
            else:
                # do image weight subtraction?
                imageArray.append(tempImageArray)
                imageTotal +=1

                print("\nImage Array: ", imageArray)
                print("Total Images: " + str(imageTotal) + "\n")
                i = 0
                tempImageArray = []
            
    counter = getCount(attributesArray[-1])

    if counter <= 0:
        exit()
    

    


#print(getImageName(imagesArray[1][1][0]))

exit()

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