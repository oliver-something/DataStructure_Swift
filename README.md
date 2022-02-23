# Data Structures in Swift:
### I will add more useful algorithms to this directory, for is just Stack.
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
