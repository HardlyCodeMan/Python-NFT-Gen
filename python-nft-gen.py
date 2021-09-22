import json
import os
import sys
from PIL import Image

# Main images dir
baseDir = './images/'

#attributesFile  = open('./attributes.json',)
attributesFile  = open('./data.json',)
attributes = json.load(attributesFile)

attributesArray = []
imagesArray = []
weightsArray = []
metadataArray = []

i = 0
j = 0 # image & weight
# Load json into iteratable arrays
#for (k,v) in attributes.items():
#    tempArray = []
#    while j < len(attributes[k]):
#        tempArray = [attributes[k]]
#        print(tempArray)
#        j += 1
#    i += 1
#    attributesArray.append(tempArray)
#
#     print(attributesArray)

j = 0
my_json = attributes
my_array = []
tempArray = []
#for key, value in my_json.items():
#    print(value)
#    while j < len(my_json[key]):
#        tempArray.append(my_json[key][j])
#        j += 1
#    new_array = [key, tempArray]
#    my_array.append(new_array)


for key, value in my_json.items():
    current_key = my_json[key]
    new_array = [key]
    for i in current_key:
        new_array.append(i)
        # for j in i:
        #     new_array.append(j)
    my_array.append(new_array)

#print(my_array)
print(my_array[0])
print(my_array[0][0])
print(my_array[0][0][0])

#print(attributesArray)

i = 0 # attribute name
j = 0 # image & weight

#while i < len(attributesArray):
#    trait = str(attributesArray[i])
#    print(trait)
#    while j < len(attributes[trait]):
#        image = attributes[trait][j][0]
#        weight = attributes[trait][j][1]
#        print(image)
#       print(weight)
#       j += 1
#    i += 1

#print(attributes['Fur'][0][0])
#print(attributesArray[0])
#print(imagesArray)

def getImageName(data):
    return data[0]

def getImageWeight(data):
    return data[1]

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