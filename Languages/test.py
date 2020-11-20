def functionName(inp1 : int = 1, inp2  : str = "yo") -> int:
    print(inp1)
    print(inp2)
    return inp1, inp2

def functionName1(*args):
    for elem in args:
        print(elem)
    return 0

def functionName2(**kwargs):
    print(kwargs.keys())
    print(kwargs.values())
    return 0

print("here")
a,b = functionName()
print(a)
print(b)

print("here")
functionName(2)
functionName(2, "me")


functionName1(2, "me", 'l', 43, [3,2])



functionName2(bum = 5)