import Foundation

// OPTIONAL TYPE

let myStringNum = "100"
let myIntNum = Int(myStringNum)

let myWrongStringNum = "Cristian"
let myWrongIntNum = Int(myWrongStringNum) // myWrongIntNum is an optional

var myOptionalString: String?
print(myOptionalString) // Expression implicitly coerced from 'String?' to 'Any'

myOptionalString = "Welcome to the advanced Swift course"

if myOptionalString != nil {
  print("myOptionalString is not nil")
} else {
  print("myOptionalString is nil")
}

// OPTIONAL BINDING

var myOptionalStr: String?
var myOptionalStr2: String?
var myOptionalStr3: String?
var myOptionalNil: String?

myOptionalStr = "Cristian"
myOptionalStr2 = "28"
myOptionalStr3 = "Spain"

if let myStr = myOptionalStr, let myStr2 = myOptionalStr2, let myStr3 = myOptionalStr3 {
  print("\(myStr) \(myStr2) \(myStr3)")
} else {
  print("Some variable is nil")
}

// Force unwrapping (!)

print(myOptionalStr!)
// print(myOptionalNil!) // ERROR: Unexpectedly found nil while unwrapping an Optional value

if myOptionalNil != nil {
  print(myOptionalNil!)
}

// OPTIONAL CHAINING

class Student {
  var name: String?
  var book: Book?
}

class Book {
  var pages: Int?
}

let myStudent = Student()
myStudent.name = "Cristian"

let myBook = Book()
myBook.pages = 50
myStudent.book = myBook

// Linking multiple levels of chaining
if let pages = myStudent.book?.pages, let name = myStudent.name {
  print("The book has \(pages) pages")
} else {
  print("The book has no pages")
}

// GUARD LET

var myOptStr: String?

func myFunc() {
  guard let myStr = myOptStr else {
    print("myStr is nil")
    return
  }
  
  print("The value of myStr is \(myStr)")
}

myFunc() // myStr is nil

myOptStr = "Hello"

myFunc() // The value of myStr is Hello

// ERROR HANDLING

func sum(firstNum: Int?, secondNum: Int?) throws -> Int {
  if firstNum == nil {
    throw SumError.firstNumNil
  } else if secondNum == nil {
    throw SumError.secondNumNil
  } else if firstNum! < 0 || secondNum! < 0 {
    throw SumError.numberNegative(firstNum: firstNum!, secondNum: secondNum!)
  }
  
  return firstNum! + secondNum!
}

// Create an enum that represents the types of errors.
enum SumError: Error {
  case firstNumNil
  case secondNumNil
  case numberNegative(firstNum: Int, secondNum: Int)
}

// Error spread
//print(sum(firstNum: 100, secondNum: 50)) // Call can throw but is not marked with 'try'
print(try sum(firstNum: 100, secondNum: 50))

// print(try sum(firstNum: nil, secondNum: 50)) // An error was thrown and was not caught

do {
  print(try sum(firstNum: 150, secondNum: -50))
} catch SumError.firstNumNil {
  print("firstNum is nil")
} catch SumError.secondNumNil {
  print("secondNum is nil")
} catch SumError.numberNegative(let firstNum, let secondNum) {
  print("Some number is negative. firstNum: \(firstNum) secondNum: \(secondNum)")
}

// TYPE CASTING

let myName = "Cristian"
let myAge = 28

class MyInfo {
  var name: String!
  var age: Int!
}

let myInfo = MyInfo()
myInfo.name = "Cristian Bermudez"
myInfo.age = 28

let myArray: [Any] = [myName, myAge, myInfo]

for elem in myArray {
  // Type casting
  if elem is String {
    // Downcasting
    let myElemStr = elem as! String
    print("Elem is of type string and its value is \(myElemStr)")
  } else if elem is Int {
    // Downcasting
    let myElemInt = elem as! Int
    print("Elem is of type Int and its value is \(myElemInt)")
  } else if elem is MyInfo {
    // Downcasting
    let myElemMyInfo = elem as! MyInfo
    print("Elem is of type MyInfo and its values are \(myElemMyInfo.name!) and \(myElemMyInfo.age!)")
  }
}

// Faster way to type casting
for elem in myArray {
  if let myElemStr = elem as? String {
    print("Elem is of type string and its value is \(myElemStr)")
  } else if let myElemInt = elem as? Int {
    print("Elem is of type Int and its value is \(myElemInt)")
  } else if let myElemMyInfo = elem as? MyInfo {
    print("Elem is of type MyInfo and its values are \(myElemMyInfo.name!) and \(myElemMyInfo.age!)")
  }
}

// NESTED TYPES

struct ChessPiece {
  let color: Color
  let type: PieceType
  
  enum Color: String {
    case white = "white", black = "black"
  }
  
  enum PieceType: String {
  case king = "king", queen = "queen", rook = "rook", bishop = "bishop",
    knight = "knight", pawn = "pawn"
    
    struct Number {
      let number: Int
    }
    
    var number: Number {
      switch self {
      case .king:
        return Number(number: 1)
      case .queen:
        return Number(number: 1)
      case .rook:
        return Number(number: 2)
      case .bishop:
        return Number(number: 2)
      case .knight:
        return Number(number: 2)
      case .pawn:
        return Number(number: 8)
      }
    }
  }
  
  var description: String {
    return "The chess piece is \(color.rawValue) \(type.rawValue) and the amount of this is \(type.number.number)"
  }
}

let myPiece = ChessPiece(color: .black, type: .knight)
print(myPiece.description)

// EXTENSIONS

let myMeters: Double = 5

func metersToKm(meters: Double) -> Double {
  return meters / 1000
}

print(metersToKm(meters: myMeters))

extension Double {
  var km: Double { return self / 1000 }
  var m: Double { return self }
  var cm: Double { return self * 100 }
}

print(myMeters.cm)
print(Double(20).m)

// PROTOCOLS

protocol PersonProtocol {
  var name: String { get set }
  var age: Int { get set }
  
  func fullInfo() -> String
}

struct Programmer: PersonProtocol {
  var name: String
  var age: Int
  var favLang: String
  
  func fullInfo() -> String {
    return "Programmer name: \(name) | age: \(age) | favourite languaje: \(favLang)"
  }
}

struct Teacher: PersonProtocol {
  var name: String
  var age: Int
  var subject: String
  
  func fullInfo() -> String {
    return "Teacher name: \(name) | age: \(age) | subject: \(subject)"
  }
}

let myProgrammer = Programmer(name: "Cristian", age: 28, favLang: "TypeScript")
let myTeacher = Teacher(name: "Brais", age: 32, subject: "Swift")

print(myProgrammer.fullInfo())
print(myTeacher.fullInfo())

// DELEGATED PROTOCOL

protocol SecondClassProtocol {
  func call()
}

class FirstClass: SecondClassProtocol {
  func call() {
    print("I am back")
  }
  
  func callSecond() {
    let secondClass = SecondClass()
    secondClass.delegate = self
    secondClass.callFirst()
  }
}

class SecondClass {
  var delegate: SecondClassProtocol?
  
  func callFirst() {
    sleep(2)
    
    delegate?.call()
  }
}

let firstClass = FirstClass()
firstClass.callSecond()

// GENERICS

// Without generics
func swapTwoInts(a: inout Int, b: inout Int) {
  let tempA = a
  a = b
  b = tempA
}

var myFirstInt = 5
var mySecondInt = 10
print("myFirstInt: \(myFirstInt) | mySecondInt: \(mySecondInt)")

swapTwoInts(a: &myFirstInt, b: &mySecondInt)
print("myFirstInt: \(myFirstInt) | mySecondInt: \(mySecondInt)")

// With generics. It works with any type
func swapTwoGenerics<T>(a: inout T, b: inout T) { // T -> Any generic value
  let tempA = a
  a = b
  b = tempA
}

var myFirstGeneric = "Mario"
var mySecondGeneric = "Sonic"
print("myFirstGeneric: \(myFirstGeneric) | mySecondGeneric: \(mySecondGeneric)")

swapTwoGenerics(a: &myFirstGeneric, b: &mySecondGeneric)
print("myFirstGeneric: \(myFirstGeneric) | mySecondGeneric: \(mySecondGeneric)")

// ADVANCED OPERATORS

// Precedence and associativity
let myInt: Int = 2 + 3 % 4 * 5      // Order: 3 % 4 * 5 + 2 = 17
let myInt2: Int = ((2 + 3) % 4) * 5 // Order: 2 + 3 % 5 * 5 = 5
