# Functions

Jump to section:
- [Home](./language_comparison.md) - Home 
- [Basic](./basic.md) - Conditionals, loops, etc.
- [Functions](./functions.md) - Functions.
- [Data Structures](./data_structures.md) - Lists, strings, hash tables etc. 
- [Notes 4](./classes.md) - Classes, OOP.


## Anonymous functions
```python
# python
```
```c++
// c++
```
```MATLAB
% MATLAB

```

## Functions
```python
# python
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
```
```c++
// c++
int functionName(int a, int &b,  int * c) {
    return a + b + *c;
}
// overload functions
float functionName(float a, float &b, int * c) {
    return a + b + *c;
}
// or use template
template <typename  T>
T functionName(T a, T &b, T * c) {
  return a + b + *c;
}
```
```MATLAB
% MATLAB

```
