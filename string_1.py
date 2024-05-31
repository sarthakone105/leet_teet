string1 = "abcd"
string2 = "efgh"

def add_strngs(string1, string2):
    len1 = len(string1)
    len2 = len(string2)
    new = ""
    i = 0
    
    while i < len(string1):
        new[i] = string1[i]
        i += 1
        
    j = 0
    
    while j < len(string2):
        new[i] = string2[j]
        i += 1
        j +=1
        
    return new


print(add_strngs(string1, string2))