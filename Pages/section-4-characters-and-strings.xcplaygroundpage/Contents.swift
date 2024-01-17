// DATA TYPE STRING

// Single-line string
let mySingleString = "Welcome"

// Multi-line string
let myMultipleString = """
This is a
multiple-line
string
"""

// Empty string
let myEmptyString = ""
let myEmptyString2 = String()

// CHARACTER, UNICODE AND EMOJIS

// Character
let myChar: Character = "\u{E9}"
let myChar2 = "\u{24}"

// Special characters (\n, \r, \t, \0, \')
/*
 \n -> new line
 \r -> Carriage return
 \t -> Horizontal tab
 \0 -> Null character
 \' -> Escaped single quote
*/

// Emojis
let myEmoji = "🍏"

// STRING CONCATENATION AND INTERPOLATION

let myName = "Cristian"
let myCountry = "Spain"

// Concatenation
let myConcatenationInfo = "My name is " + myName + " and I live in " + myCountry

// Interpolation
let myInterpolationInfo = "My name is \(myName) and I live in \(myCountry)"

// COMPARISON AND OTHER OPERATIONS

let name1 = "Akira"
let name2 = "Cristian"
let name3 = "Akira"

// Comparison
name1 == name2 // false
name1 == name3 // true

// Content
let myContent = "My name is Cristian"
myContent.contains(name1) // false
myContent.contains(name2) // true

// Empty
let myEmpty = ""
myEmpty == ""   // true
myEmpty.isEmpty // true

// Route
for valor in myContent {
  print(valor)
}
