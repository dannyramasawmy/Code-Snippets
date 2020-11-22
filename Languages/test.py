class Animal:
    def __init__(self, name, sound, weight):
        self._name = name
        self._sound = sound
        self._weight = weight

    @property
    def name(self):
        print(f'My name is {self._name}')
        return self._name

    def speak(self):
        print(f' {self._sound} ')

    def weight(self):
        return self._weight

    @staticmethod
    def genericAnimal():
        return Animal('unk', 'unk', 'unk')

    def __repr__(self):
        return f'Animal({self._name}, {self._sound}, {self._weight})'

    def __str__(self):
        return self.__repr__()


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
    



a = Animal('tony', 'rawr', 50)
a.name
a.speak()
print(a.weight())
print(a)
print(Animal.genericAnimal())

b = Dog('jeff', 54, 'fluffy')
print(b)
b.bark(4)
