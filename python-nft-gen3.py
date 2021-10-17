#from metadata import sample_metadata
#from metadata import sample_meta_dict
import json
import os
import sys
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

# load our json
for key, value in attributes.items():
    current_key = attributes[key]
    tempArray = [key]
    for i in current_key:
        tempArray.append(i)

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

# a list, b check
def isDuplicateTwo(a, b):
    for i in range(len(a)):
        if a[i] == b:
            print("Duplicate found: " + str(a[i]) + ' = ' + str(b))
            return True
    return False

# re increment the attributes involved in a duplicate image
def weightReset(tempImageArray):
    i = 0
    length = len(attributesArray[i])
    while i < length:
        attributesArray[i][tempImageArray[i]][1] += 1
        print("Resetting attribute of: ")
        print(attributesArray[i][tempImageArray[i]])
        i = i + 1

def zeroCheck(attributesArray):
    i = 1
    length = len(attributesArray)
    weightCount = 0
    while i < length:
        if attributesArray[i][1] >= 1:
            weightCount += attributesArray[i][1]

        i = i + 1

    if weightCount > 0:
        return False
    else:
        print("Zero Values Remain")
        return True

########  Main Random Generation Loop  ########
i = 0
counter = getCount(attributesArray[0])
imageTotal = 0
imageArray = []
while counter >= 0: # stop when getCount = 0, ie. no more attributes left
    tempImageArray = []
    #print("Counter: ", counter)
    if zeroCheck(attributesArray[i]):   # exit the loops if there are no more choices
            break

    while i < len(attributesArray[i]):
        if zeroCheck(attributesArray[i]):   # exit the loops if there are no more choices
            break

        max = getNumAttributes(attributesArray[i])
        rand = getRandom(1,max)

        print("Selecting from: " + str(rand))
        print(attributesArray[i][rand])
        print("With " + str(attributesArray[i][rand][1]) + " remaining")
        
        while getImageWeight(attributesArray[i][rand]) == 0: # if the selected weight is 0 reselect
            if zeroCheck(attributesArray[i]):   # exit the loops if there are no more choices
                break

            rand = getRandom(1,max)
            print("Re-selecting from: " + str(rand))
            print(attributesArray[i])
            
        tempImageArray.append(rand)

        attributesArray[i][rand][1] -= 1 # decrease selected image wieght by 1
        
        j = i # for use with reversion
        i += 1
        if i >= len(attributesArray):
            print("\nCurrent Image: ", tempImageArray)
            
            ## duplication check
            if isDuplicateTwo(imageArray, tempImageArray):
                print("Diplicate found!")

                # undo image weight subtraction
                weightReset(tempImageArray)

                # reset the generation loop and try again
                i = 0
                tempImageArray = []
            else:
                # do image weight subtraction?
                imageArray.append(tempImageArray)
                imageTotal +=1

                print("\nImage Array: ", imageArray)
                print("Total Images: " + str(imageTotal) + "\n")
                i = 0
                tempImageArray = []
            
    counter -= 1

    if counter <= 0:
        exit()