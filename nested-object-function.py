object1 = {"a":{"b":{"c":{"d":{"x"}}}}}

def getfinalvalue(myobj, mykey):
    if isinstance(myobj, dict):
       for key, item in myobj.items():
           if key == mykey:
              return item
           elif isinstance (item, dict):
              result = getfinalvalue(item, mykey)
              if result is not None:
                 return result
    return None
               
mykey = 'c'          
myvalue = getfinalvalue(object1, mykey)

print (myvalue)