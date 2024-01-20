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

var myArray1 = [5, 8, 1, 0, 3, 9, 7, 2, 4, 6]

var myDict = [5:"cinco",
              8:"ocho",
              1:"uno",
              0:"cero",
              3:"tres",
              9:"nueve",
              7:"siete",
              2:"dos",
              4:"cuatro",
              6:"seis",]

var mySet: Set = [5, 8, 1, 0, 3, 9, 7, 2, 4, 6]

// Sort(). Modify the original array
print(myArray1)
myArray1.sort()
print(myArray1)

// Custom sort()
myArray1.sort {(intA, intB) -> Bool in
  return intA > intB
}
print(myArray1)

// myDict.sort() unsupported
// mySet.sort()  unsupported

// Sorted(). Does not modify the original array.
// Returns a new sorted array
var myArray2 = [5, 8, 1, 0, 3, 9, 7, 2, 4, 6]
var myArray2Sorted = myArray2.sorted()
print(myArray2)
print(myArray2Sorted)

// Custom sorted()
myArray2Sorted = myArray2.sorted { (intA, intB) -> Bool in
  return intA > intB
}
print(myArray2Sorted)

let mySortedDict = myDict.sorted { (elemA, elemB) -> Bool in
  return elemA.key < elemB.key
}
print(mySortedDict)

var mySortedSet = mySet.sorted()
print(mySortedSet)

mySortedSet = mySet.sorted { (intA, intB) -> Bool in
  return intA > intB
}
print(mySortedSet)

// Map
var myArray3 = [5, 8, 1, 0, 3, 9, 7, 2, 4, 6]

var myMapArray = myArray3.map { (myInt) -> Int in
  return myInt + 10
}
print(myMapArray)

let myStrMapArray = myArray3.map { (myInt) -> String in
  return "This is the number \(myInt)"
}
print(myStrMapArray)

let myIntMapArray = myDict.map { (myElem) -> Int in
  return myElem.key
}
print(myIntMapArray)

// ForEach
var myArray4 = [5, 8, 1, 0, 3, 9, 7, 2, 4, 6]

myArray4.forEach { (myInt) in
  print(myInt)
}

print("")

myDict.forEach { (myElem) in
  print(myElem.key)
}

print("")

mySet.forEach { (myInt) in
  print(myInt)
}

// Count
print(myArray4.count) // 10
print(myDict.count)   // 10
print(mySet.count)    // 10

// Is empty
let myEpmtyArray = [Int]()
print(myEpmtyArray.isEmpty) // true
print(myArray4.isEmpty)     // false
print(myDict.isEmpty)       // false
print(mySet.isEmpty)        // false

// Reverse
print(myArray4.reversed() as [Int])
print(myDict.reversed())
print(mySet.reversed())

// First or last
print(myArray4.first!)
print(myDict.first!)
print(mySet.first!)
print(myArray4.last!)
// print(myDict.last!) // Last only exists for arrays
// print(mySet.last!)

// Drop or pop
print(myArray4.popLast()!) // Removes and returns the last element of the collection
print(myDict.popFirst()!)  //Removes and returns the first key-value pair of the dictionary if the dictionary is not empty
print(mySet.popFirst()!)   // Removes and returns the first element of the set.
