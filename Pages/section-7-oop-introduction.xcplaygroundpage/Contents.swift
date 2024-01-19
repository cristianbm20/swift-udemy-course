// STRUCTS, PROPERTIES AND METHODS

struct square {
  var width = 10
  var height = 10
  
  func area() -> Int {
    return width * height
  }
}

let mySquare = square()
let mySquareArea = mySquare.area()

// CLASSES, INSTANCES AND USE OF OBJECTS

class car {
  var brand = "unknown"
  var color = "white"
  var wheels = 4
  var price = 0
  
  func showProps() -> String {
    return "Brand: \(brand)\nColor: \(color)\nWheels: \(wheels)\nPrice: \(price)"
  }
  
  func turnOn() -> Bool {
    return true
  }
  
  func turnOff() -> Bool {
    return true
  }
  
  func accelerate() -> Bool {
    return true
  }
}

let myCarMazda = car()

myCarMazda.brand = "Mazda"
myCarMazda.color = "Blue"
myCarMazda.price = 20000
myCarMazda.showProps()

// STRUCT VS CLASS: COPY VS REFERENCE

struct carStruct {
  var brand = "unknown"
  var color = "white"
  var wheels = 4
  var price = 0
}

class carClass {
  var brand = "unknown"
  var color = "white"
  var wheels = 4
  var price = 0
}

var myCarStruct1 = carStruct()
var myCarClass1 = carClass()
var myCarStruct2 = myCarStruct1 // copy
var myCarClass2 = myCarClass1   // reference

myCarStruct1.price = 10000
myCarClass1.price = 10000

// When the value of a property of a class instance is changed,
// the value of that property is changed in all instances of the class.
myCarStruct2.price = 5500
myCarClass2.price = 7250

print("myCarStruct1 price: \(myCarStruct1.price)")
print("myCarStruct2 price: \(myCarStruct2.price)")
print("myCarClass1 price: \(myCarClass1.price)")
print("myCarClass2 price: \(myCarClass2.price)")
