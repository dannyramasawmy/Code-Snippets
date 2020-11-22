# Classes

Jump to section:
- [Home](./language_comparison.md) - Home 
- [Basic](./basic.md) - Conditionals, loops, etc.
- [Functions](./functions.md) - Functions.
- [Data Structures](./data_structures.md) - Lists, strings, hash tables etc. 
- [Classes](./classes.md) - Classes, OOP.


## Simple Class
```python
# python - use copy.copy() for copy
class Animal:
    def __init__(self, name, sound, weight):
        self.name = name 
        self._sound = sound # using _ makes them hidden
        self._weight = weight

    @property # decorator for access like a property
    def name(self):
        print(f'My name is {self.name}')
        return self.name

    def speak(self):
        print(f'{self._sound}')

    def weight(self):
        return self._weight

    @staticmethod 
    def genericAnimal():
        return Animal('unk', 'unk', 'unk')

    def __repr__(self):
        return f'Animal({self._name}, {self._sound}, {self._weight})'

    def __str__(self):
        return self.__repr__()


a = Animal('tony', 'rawr', 50)
a.name
a.speak()
print(a.weight())
print(a)
print(Animal.genericAnimal())

>>> My name is tony
>>> rawr
>>> 50
>>> Animal(tony, rawr, 50)
>>> Animal(unk, unk, unk)
```
```c++
// c++
```
```matlab
% matlab
classdef Animal < handle
    properties (SetAccess = protected, GetAccess = public)
        name
    end
    properties (SetAccess = protected, GetAccess = protected)
        sound
        weight
    end
    
    % public methods
    methods
        % constructors
        function obj = Animal(varargin)
            switch nargin
                case 3
                    obj.name = varargin{1};
                    obj.sound = varargin{2};
                    obj.weight = varargin{3};
                otherwise
                    obj.name = 'unk';
                    obj.sound = 'unk';
                    obj.weight = 'unk';
            end
        end
        
        % overload display
        function obj = disp(obj)
            disp(['Animal(', obj.name,', ', obj.sound, ...
                ', ', num2str(obj.weight), ')'])
        end
        
        % methods
        function speak(obj)
           disp(obj.sound) 
        end
        % setter and getter
        function weight = getWeight(obj)
            weight = obj.weight;
        end
        function setWeight(obj, weight)
            obj.weight = weight;
        end
          
    end
    
    % static
    methods (Static)
        function animal = genericAnimal()
            animal = Animal();
        end
    end
    
end


b = Animal('tom', 'bark', 54);
disp(b);
b.speak;
a = Animal.genericAnimal;
disp(a);
b.setWeight(4);
disp(b);

>>> Animal(tom, bark, 54)
>>> bark
>>> Animal(unk, unk, unk)
>>> Animal(tom, bark, 4)
```

## Simple Inheritance
```python
# python

class Dog(Animal):
    def __init__(self, name, weight, fur):
        self._name = "Dog:" + name
        self._sound = "Woof"
        self._weight = weight
        self.fur = fur

    def bark(self, value):
        # call super class
        for _ in range(value):
            super().speak()

    def __repr__(self):
        return f'Dog({self._name}, {self._weight}, {self.fur})'

    def __str__(self):
        return f'Dog({self._name}, {self._sound}, {self._weight}, {self.fur})'
    

b = Dog('jeff', 54, 'fluffy')
print(b)
b.bark(4)
>>> Dog(Dog:jeff, Woof, 54, fluffy)
>>>  Woof
>>>  Woof
>>>  Woof
>>>  Woof

```
```c++
// c++
```
```matlab
% matlab
classdef Dog < Animal
    
    properties (SetAccess = private, GetAccess = private)
        fur;
    end
    
    methods
        function obj = Dog(name, weight, fur)
            obj.name = name;
            obj.sound = 'woof';
            obj.weight = weight;
            obj.fur = fur;
        end
       
        function bark(obj, value)
            for i = 1:value
                obj.speak
            end
        end
        
        function obj = setFur(obj, fur)
            obj.fur = fur;
        end
        function fur = getFur(obj)
            fur = obj.fur;
        end
        
        function disp(obj)
            disp(['Animal(', obj.name,', ', obj.sound, ...
                ', ', obj.fur, ', ', num2str(obj.weight), ')'])
        end
        
    end
end

b = Dog('jeff', 54, 'fluffy');
disp(b)
b.bark(3);
b.setFur('short hair');
disp(b)

>>> Animal(jeff, woof, fluffy, 54)
>>> woof
>>> woof
>>> woof
>>> Animal(jeff, woof, short hair, 54)

```

## Extra
### Overloading Operators
- Python : https://www.geeksforgeeks.org/operator-overloading-in-python/#:~:text=Operator%20Overloading%20means%20giving%20extended,int%20class%20and%20str%20class.
- C++
- MATLAB : https://www.mathworks.com/help/matlab/matlab_oop/implementing-operators-for-your-class.html

### Iterating
- Python : https://towardsdatascience.com/how-to-loop-through-your-own-objects-in-python-1609c81e11ff
    - ``` __iter__ ```
    - ``` __next__ ```   
- C++ : 
- MATALB : 

### Indexing 
- Python : https://stackoverflow.com/questions/38712056/object-indexing-in-python
    - ```__getitem__(self, index)``` 
- C++ :
- MATLAB : https://www.mathworks.com/help/matlab/customize-object-indexing.html
    - ```subsref```
    - ```subsasgn```
         