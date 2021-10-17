import json
import random
import itertools as it
import pprint

#### Cartesian product solution

pp = pprint.PrettyPrinter(indent=4)

attributesFile  = open('./attributes.json',)
#attributesFile  = open('./data2.json',)
attributes = json.load(attributesFile)

attributesArray = []
keyArray = []
imageArray = []

for key, value in attributes.items():
    #print('key: ' + key)
    #print('value: ' + str(value))
    temp_array = []
    for i in value:
        #print('i:'+ str(i))
        temp_array.append(i[0])
    attributesArray.append(temp_array)

#print(attributesArray)

for key in attributes.items():
    keyArray.append(key)

i = 0
imageCount = 0

#output = []
#output = it.product(*attributesArray)

#pp.pprint(output)

for element in it.product(*attributesArray):
    print(element)
    imageCount += 1
    print(str(imageCount))
    if imageCount >= 6631:
        exit()

print(str(imageCount))