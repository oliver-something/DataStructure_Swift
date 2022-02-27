# Data Structures in Swift:
### I will add more useful algorithms to this directory, for now is just Stack.
I have created the stack with structs, for using the code you can just add the file to your project.

> Using string literals for initilization :

``` swift
var names: Stack<String> = ["John", "Mike", "Hammond", "Rose"]
```

> Using constructor :

``` swift
var names = Stack<String>(["John", "Mike", "Roase"])
// or
let arrayOfNumbers = [12, 234, 65, 1]
var numbers = Stack<Int>(arrayOfNumbers)

```
> Methods :

``` swift
var names = Stack<String>()
names.push("John")
names.push("Mike")

if let name = name.peek() {
  print(name)
} else {
  print("nil")
}

if let popedName = name.pop() {
  print(popedName)
} else {
  print("nil")
}
```

--
### Queue: 
> I have implemented queue with structs

``` swift
var names = Queue<String>()
var number: Queue<Int> = [273, 345, 56, 32, 45]

names.push("John")
names.push("Steve")
names.push("Rose")

print(names)
if let name = names.deQueue() {
  print(name)
} else {
  print("Queue is empty")
}
