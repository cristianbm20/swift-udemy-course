// SETS

var mySet1 = Set<String>()
let mySet2: Set<String> = ["Swift", "TypeScript", "Python"]
let mySet3: Set = ["Java", "C#", "Rust", "C#"]

// Insertion one by one
mySet1.insert("Mario")
mySet1.insert("Luigi")
mySet1.insert("Yoshi")
mySet1.insert("Toad")
mySet1.insert("Mario") // Sets do not contain duplicate elements
print(mySet1)

// Access
if mySet1.contains("Mario") {
  print("The element exists")
} else {
  print("The element does not exist")
}

// Modification
mySet1.remove("Luigi")
print(mySet1)

// Access and modification by index
if let index = mySet1.firstIndex(of: "Mario") {
  mySet1.remove(at: index)
}
print(mySet1)

// Iteration
mySet1.insert("Mario")
mySet1.insert("Luigi")
mySet1.insert("Yoshi")
mySet1.insert("Toad")

for elem in mySet1 {
  print(elem)
}

// Operations
let myIntSet1: Set = [1, 2, 3, 4, 5]
let myIntSet2: Set = [0, 2, 3, 6, 7]

// Intersection
print(myIntSet1.intersection(myIntSet2))

// Symmetric difference
print(myIntSet1.symmetricDifference(myIntSet2))

// Union
print(myIntSet1.union(myIntSet2))

// Subtraction
print(myIntSet1.subtracting(myIntSet2))
print(myIntSet2.subtracting(myIntSet1))

// COLLECTIONS ALGORITHMS

var myArray = [5, 8, 1, 0, 3, 9, 7, 2, 4, 6]

let myDict = [5:"cinco",
              8:"ocho",
              1:"uno",
              0:"cero",
              3:"tres",
              9:"nueve",
              7:"siete",
              2:"dos",
              4:"cuatro",
              6:"seis",]

let mySet: Set = [5, 8, 1, 0, 3, 9, 7, 2, 4, 6]

// Sort
print(myArray)
myArray.sort()
print(myArray)

myArray.sort {(intA, intB) -> Bool in
  return intA > intB
}
print(myArray)

// myDict.sort() unsupported
// mySet.sort()  unsupported
