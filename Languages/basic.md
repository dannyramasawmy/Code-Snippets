# Basic
If-statements etc

Jump to section:
- [Home](./language_comparison.md) - Home 
- [Basic](./basic.md) - Conditionals, loops, etc.
- [Functions](./functions.md) - Functions.
- [Data Structures](./data_structures.md) - Lists, strings, hash tables etc. 
- [Classes](./classes.md) - Classes, OOP.
 
## Strings
```python
# python
# no difference between ', "
```
```c++
// c++
// ' -> single character
// "" string literal  
```
```matlab
% matlab
% '' -> char
% "" -> string
```

## Check type/class
```python
# python
type(...)
isinstance(a, list)
```
```c++
// c++
#include <typeinfo>
typeid(...).type()
```
```matlab
% matlab
class(...)
```

## Printing 
```python
# python
# f string
print(f' ... ') 
string = f'...' 
```
```c++
// c++
#include <iostream>
std::cout << ... << endl;

#include <stdio.h>
printf(...);
puts(...);
str = sprintf(...);
```
```matlab
% matlab
disp(...)
printf(...)
sprintf(...)
```


## If-statements and switch-case
```python
# python
# one line
C = A if x == y else B
# in list comprehension
C = [i for i in range(6) if i%2]
if X and Y:
    pass
elif B or not C:
    pass
elif B != C:
    pass
else:
    pass
```
```c++
// c++
if (...) {
    // pass
} else if (...) {
    // pass
} else {
    // pass
}

// or switch-case
switch(expression) {
  case x:
    // code block
    break;
  case y:
    // code block
    break;
  default:
    // code block
}
```
```matlab
% matlab
if A ~= B ; 
    % pass; 
elseif (c && b) || (c && d); 
    % pass; 
else 
    % pass; 
end;

% switch case
switch n
    case A
        % pass; 
    case B
        % pass; 
    case C
        % pass; 
    otherwise
        % pass; 
end
```

## For-Loops
```python
# python
# list comprehension
[i for i in range(n)]
{k : v for k,v in zip(range(n), range(m)) }
# normal
for a,b,c in zip(A, B, C):
    break
    continue
    pass

for idx, elem in enumerate(n):
    pass
```
```c++
// c++
for (auto elem : iterable) {
    // pass
    break;
}
for (int i = 0; i < M ; i++) {
    // pass
    continue;
}

```
```matlab
% matlab
for i = [...]
    % do something
    break;
    continue;
end

```

## While-loops
```python
# python
i = 1
while i < 6:
  i += 1
else:
    pass # when condition is not true anymore
```
```c++
// c++
int i = 0;
while (i < 5) {
  i++;
}
```
```matlab
% matlab
while a < 5
    a = a + 1;  
end
```



