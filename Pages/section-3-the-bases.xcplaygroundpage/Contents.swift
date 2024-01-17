// COMMENTS

// Single-line comment
/*
 Multi-line
 comment
 */

// CONSTANTS AND VARIABLES

var myVar = "var content"       // Mutable
let myConst = "const content"   // Immutable
// Multiple statements
let myName = "Cristian", myBirthdate = "20/04", myCountry = "Spain"

// DATA TYPES. Integers, Floats and arithmetic operators

let myInt = 2
let myFloat: Float = 3.3  // 32 bits
let myDouble = 2.5        // 64 bits

var sumIntegers = myInt + 1
var sumFloats = myFloat + 0.6
// var sum = myInt + myDouble // ERROR: Cannot sum types 'Int' and 'Double'
var sum = Double(myInt) + myDouble
var division = Double(myInt) / 4

// EXPLICIT AND IMPLICIT TYPE ASSIGNMENT

let myNameExplict: String = "Cristian"
let myNameImplicit = "Cristian"
