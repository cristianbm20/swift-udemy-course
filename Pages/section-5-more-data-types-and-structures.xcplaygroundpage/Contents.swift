// BOOLEANS AND LOGICAL VALUES

let isAdult = true

if isAdult {
  print("You are an adult")
} else {
  print("You are not an adult")
}

// COLLECTIONS

// Arrays
var myArray = [1, 2, 3]
var myEmptyArray: [Int] = []

// Access array elements with index
// The indexes in arrays start with 0
print(myArray[0], myArray[1], myArray[2])
// print(myArray[3]) // ERROR: Index out of range

// Add elements
myArray.append(5) // Add to the end
myArray.insert(4, at: 3)
print(myArray)

// Remove elements
myArray.remove(at: 2)
myArray.removeFirst()
myArray.removeLast()
print(myArray)

// Remove all elements
myArray.removeAll()
print(myArray) // Empty array

// DICTIONARIES

let myClassicDict = Dictionary<Int, String>()
var myModernDict = [Int:String]()

// Add data
myModernDict = [1:"Mario", 2:"Luigi"]
// myModernDict = [4:"Bowser", 5:"Wario"] This removes the previous statement

// Add a single data
myModernDict[3] = "Yoshi"

// Access to data
myModernDict[1]
myModernDict[2]
myModernDict[3]

// Delete data
myModernDict[3] = nil
myModernDict.removeValue(forKey: 2) // Classic option

// TUPLES

var myData = ("Cristian", 28, 1.80)

// Access to data
print(myData.0, myData.1, myData.2)

var (myName, myAge, myHeight) = myData
print(myName, myAge, myHeight)

var myDataTuples = (name:"Cristian", age:28, height:1.80)
print(myDataTuples.name, myDataTuples.age, myDataTuples.height)

// ENUMS

enum MyDataEnum {
  case name
  case country
  case phone
}

var currentData: MyDataEnum = .name
currentData = .phone

// Enums with associated values
enum ComplexPersonalData {
  case name(String)
  case surname(String, String)
  case country(String)
  case phone(Int)
}

var complexCurrentData: ComplexPersonalData = .name("Cristian")
complexCurrentData = .country("Spain")

// Enums with the same type
enum RawPersonalData: String {
  case name = "Name"
  case surname = "Surname"
  case country = "Country"
  case phone = "Phone number"
}

RawPersonalData.name.rawValue
RawPersonalData.surname.rawValue
RawPersonalData.country.rawValue
RawPersonalData.phone.rawValue

// RANGE OPERATOR

let myExampleArray = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

// One-sided range
var subSetArray1 = myExampleArray[...3] // [0, 1, 2, 3]
var subSetArray2 = myExampleArray[5...] // [5, 6, 7, 8, 9]

// Two-sided range
var subSetArray3 = myExampleArray[1...3] // [1, 2, 3]
var subSetArray4 = myExampleArray[1..<3] // [1, 2]

// Closed range
var closedRange = 1...5
print(Array(closedRange)) // Parse to array type to see the elements

// OPERATORS

// Assignment operators (=, +=, -=, *=, /=, %=)
var myNum = 4
myNum += 2 // myNum = myNum + 2
myNum -= 2 // myNum = myNUm - 2
myNum *= 2 // myNum = myNUm * 2
myNum /= 2 // myNum = myNUm / 2
myNum %= 3 // myNum = myNUm % 2

// Comparison operators (==, !=, >, <, >=, <=)
var a = 4
var b = 6
a == b // false
a != b // true
a > b  // false
a < b  // true
a >= b // false
a <= b // true

// LOGICAL OPERATORS (AND, OR, NOT)

// Logical AND (&&). True only if both operands are true
true && true    // true
true && false   // false
false && false  // false

// Logical OR (||). True if at least one of the operands is true
true || true    // true
true || false   // true
false || false  // false

// Logical NOT (!). True if the operand is false and vice-versa
!true   // false
!false  // true

// IF, IF...ELSE STATEMENT

if true {
  print("This runs")
}

//if false {
//  print("This does not run")
//}

let myMoney = 50
let ticketPrice = 20

if myAge >= 18 && ticketPrice <= myMoney {
  print("You can enter the establishment as you are of legal age and you have enough money")
} else {
  print("You can not enter the establishment as you are not of legal age or you do not have enough money")
}

// NESTED IF STATEMENT

if myAge >= 18 {
  print("You can enter the establishment as you are of legal age")
  
  if myMoney >= ticketPrice {
    print("You can also pay the entrance")
  }
}

// SWITCH

let myCountryCode = "SP"

switch myCountryCode {
case "SP":
  print("The languaje is Spanish")
case "MX":
  print("The languaje is Spanish")
case "PE":
  print("The languaje is Spanish")
case "CO":
  print("The languaje is Spanish")
case "ARG":
  print("The languaje is Spanish")
case "USA":
  print("The languaje is English")
default:
  print("The languaje is unknown")
}

let age = 28

switch age {
case 0, 1, 2:
  print("You are a baby")
case 3...10:
  print("You are a child")
case 11..<16:
  print("You are a teenager")
case 16..<70:
  print("You are an adult")
case 70..<100:
  print("You are an old person")
default:
  print("🫡")
}

// Switch with enums
enum PersonalData {
  case name
  case surname
  case address
  case phone
}

let userData: PersonalData = .name

switch userData {
case .name:
  print("Editing the name")
case .surname:
  print("Editing the surname")
case .address:
  print("Editing the address")
case .phone:
  print("Editing the phone")
}

// FOR IN LOOP

var counter = 0

for num in 1...4 {
  counter += 1
  print(num)
}

let countries = ["Spain", "Mexico", "USA", "Japan"]

for country in countries {
  print(country)
}

let countriesDict = ["SP":"Spain", "MX":"Mexico", "USA":"Unites States", "JP":"Japan"]

for (countryCode, country)  in countriesDict {
  print("\(countryCode) --> \(country)")
}

var nums = [1, 2, 3, 4, 5, 6, 7, 8, 9]
var sum = 0

for num in nums {
  sum = num + sum
}

print("The sum of all the elements in the nums array is \(sum)")

// WHILE LOOP

var age1 = 10

while age1 < 18 {
  print("You are underage. You lack \(18 - age1) years")
  age1 += 1
}

print("You are now an adult")

// REPEAT WHILE (DO WHILE)

repeat {
  nums.removeLast()
  print(nums)
} while (nums.count > 0)
