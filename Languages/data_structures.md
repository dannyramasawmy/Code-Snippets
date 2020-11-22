# Data Structures

Jump to section:
- [Home](./language_comparison.md) - Home 
- [Basic](./basic.md) - Conditionals, loops, etc.
- [Functions](./functions.md) - Functions.
- [Data Structures](./data_structures.md) - Lists, strings, hash tables etc. 
- [Classes](./classes.md) - Classes, OOP.

## Arrays/ Strings / Slicing
```python
# python lists can store any type and act like a stack
arr = []
arr = [0,1,2,3,4,5,6]
arr = ['a','b','c','d','e','f','g']
arr[0]
>>> 'a'
arr[3]
>>> 'd'
arr[0:3]
>>> 'a','b','c'
arr[0::]
>>> arr = ['a','b','c','d','e','f','g']
arr[-3:-1]
>>> 'e','f'
arr[0::2]
>>> ['a', 'c', 'e', 'g']
arr[-1::-2]
>>> ['g', 'e', 'c', 'a']
arr.append('h')
>>> arr = ['a','b','c','d','e','f','g','h']
arr.pop()
>>> arr = ['a','b','c','d','e','f','g']
```
```c++
// c++

```
```matlab
% matlab
% numeric array
arr = [0, 1, 2, 3, 4, 5, 6, 7]
% char array
charr = 'abcdefg';
charr(1)
>>> 'a'
charr(4)
>>> 'd'
charr(1:3)
>>> 'abc'
charr(1:end)
>>> arr = 'abcdefg'
charr(end-1:-1:end-3)
>>> 'fed'
% matlab strings are like python strings
% string array 
charr = ["a", "b", "c", "d", "e", "f", "g"]; % strings are objects
charr.append('h')
>>> arr = ["a", "b", "c", "d", "e", "f", "g", "h"]
arr.pop()
>>> arr = ["a", "b", "c", "d", "e", "f", "g"]
```

## 2D Array
```python
# python
arr2d = [['a', 'b', 'c'], ['d','e','f'], ['g','h','i']]
arr2d[0]
>>> ['a', 'b', 'c']
```
```c++
// c++
```
```matlab
% matlab

```

## Lists / Cell
```python
# python
# same as above
```
```c++
// c++
```
```matlab
% matlab
a = {obj1, obj2, obj3, obj4}
% same as arrays with curly brace 
a{1}
% for nested objects
a{1}(start:step:end)
```


## Hash-table / Dictionaries
```python
# python
# count
str = 'lsidjlakdjlasjdopaijsdmx,c9w3';
tb = dict()
for let in str:
    if let in tb:
        tb[let] += 1
    else:
        tb[let] = 1

tb.keys()
tb.values(0)
```
```c++
// c++
```
```matlab
% matlab
map = containers.Map(key1, value1)
% depends on type
map('key1') = value1
map(key1) = value1
map.iskey('test')
map.isempty()

% count characters
str = 'lsidjlakdjlasjdopaijsdmx,c9w3';
tb = containers.Map();

% only one type!

for let = str
    % add key
    if tb.isKey(let) == 0
        tb(let) = 0;
    end
    % count letter
    tb(let) = tb(let) + 1; 
end

sum = 0;
for key = tb.keys
    % keys are cells
    sum = sum + tb(key{:});
end

```

## Sets
```python
# python
s1 = {1, 2, 3, 4, 5}
s2 = {1, 2, 3, 9, 7}
s3 = {1,2,3}
s1.add(<item>)
2 in s1
>>> True
s1.issuperset(s3)
>>> True
s3.issubset(s1) # is s2 a subset of s1
>>> True
s1 - s2
>>> {4, 5}
s2 - s1
>>> {7, 9}
s1 ^ s2 # symmetric difference
>>> {4, 5, 7, 9}
s1 & s2 # intersection
>>> {1, 2, 3}
s1 | {5, 6} # union
>>> {1, 2, 3, 4, 5, 6, 7, 9}
```
```c++
// c++
```
```matlab
% matlab
s1 = [1,2,3,3,4,5]
s2 = [1,2,3,7,9]
unique(s1)
>>> s1 = [1,2,3,4,5]
ismember(3, s1)
>>> true
ismember(9, s1)
>>> false
intersect(s1, s2)
>>> [1,2,3]
setdiff(s1, s2)
>>> [4, 5]
setdiff(s2, s1)
>>> [7, 9]
setxor(s1, s2)
>>> [4, 5, 7, 9]
union(s1, s2)
```


