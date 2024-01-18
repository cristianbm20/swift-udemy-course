// FUNCTIONS WITH NO PARAMS

func greet() {
  print("Hello")
}

greet()

func sumTwoNums() -> Int {
  return 3 + 2
}

sumTwoNums()

// FUNCTIONS WITH A SINGLE PARAM

func square(num: Int) -> Int {
  let result = num * num
  return result
}

square(num: 2) // 4

// FUNCTIONS WITH MULTIPLE PARAMS

func cube(num: Int) -> Int {
  let result = num * num * num
  return result
}

cube(num: 3) // 27

func customGreet(greetMessage: String, name: String) -> String {
  return "\(greetMessage), \(name)"
}

customGreet(greetMessage: "Welcome to the Swift course" ,name: "Cristian")

// DEFAULT VALUES

func greetWithName(greetMessage: String = "Welcome to the Swift course,", name: String) -> String {
  return "\(greetMessage), \(name)"
}

greetWithName(name: "Akira")
greetWithName(greetMessage: "Hello", name: "Akira") // The greetMessage param can be overwritten

// RETURNING MULTIPLE VALUES

func listNames() -> [String] {
  let names = ["Mario", "Luigi", "Yoshi"]
  return names
}

let characters = listNames()
print(characters)

// NAMING EXTERNAL PARAMS

func avgScore(math score1: Double, physics score2: Double, geography score3: Double) -> Double {
  return (score1 + score2 + score3) / 3
}

let myAvgScore = avgScore(math: 9.25, physics: 8.5, geography: 7)

// INTRODUCTION TO CLOSURES

let myClosure = {(score1: Double, score2: Double, score3: Double) -> Double in
  return (score1 + score2 + score3) / 3
}
