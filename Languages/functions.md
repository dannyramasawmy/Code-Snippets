# Functions

Jump to section:
- [Home](./language_comparison.md) - Home 
- [Basic](./basic.md) - Conditionals, loops, etc.
- [Functions](./functions.md) - Functions.
- [Data Structures](./data_structures.md) - Lists, strings, hash tables etc. 
- [Classes](./classes.md) - Classes, OOP.


## Anonymous functions
```python
# python
```
```c++
// c++
```
```matlab
% matlab

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

int functionName(int a = 1, int b = 2,  int c = 3) {
    return a + b + *c;
}
// or use template
template <typename  T>
T functionName(T a, T &b, T * c) {
  return a + b + *c;
}
```
- c++ variadic https://en.cppreference.com/w/cpp/utility/variadic

```matlab
% matlab
function [a, b, c] = functionName(A, B, C)
    a = A;
    b = B;
    c = C;
end

% variable inputs and outputs
function acceptVariableNumInputs(varargin)
    disp("Number of input arguments: " + nargin)
    celldisp(varargin)
end

function varargout = variableNumInputAndOutput(varargin)
    disp(['Number of provided inputs: ' num2str(length(varargin))])
    disp(['Number of requested outputs: ' num2str(nargout)])
    
    for k = 1:nargout
        varargout{k} = k;
    end
end

[d,g,p] = variableNumInputAndOutput(6,'Nexus')

% default arguments
function out = foo(in)
    arguments
        in(1,1) double {mustBeFinite} = 0;
    end
    out = in + 1;
end
```
