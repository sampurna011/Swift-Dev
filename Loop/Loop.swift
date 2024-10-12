import Foundation


/*
 Both those examples use stride(from:to:by:), which counts from the start point up to by excluding the to parameter. If you want to count up and including the to parameter, you should use stride(from:through:by:), like this:
 */

for i in stride(from: 0, through: 10, by: 2) {  // include end value
    print(i)
}

for i in stride(from: 0, to: 0.5, by: 0.1) { // Do not include end value
    print(i)
}



/*  
 For-In loop with collections
 */

let cities = ["Amsterdam", "New York", "San Francisco"]
for city in cities {
    print(city)
}

/* Output -
  Amsterdam
  New York
  San Francisco
 */


let ages = ["Antoine": 28, "Jaap": 2, "Jack": 72]
for (name, age) in ages {
    print("\(name) is \(age) years old")
}

/* Output -
   Antoine is 28 years old
   Jaap is 2 years old
   Jack is 72 years old
 */


for index in (0...cities.count).reversed() {
    print("\(index)..")
}
 // Output - 3, 2, 1, 0



/*  Iterating over an array using forEach  */

cities.forEach { city in
    print(city)
}

/* Output -
   Antoine is 28 years old
   Jaap is 2 years old
   Jack is 72 years old
 */


ages.forEach { name, age in
    print("\(name) is \(age) years old")
}


/* Output -
   Antoine is 28 years old
   Jaap is 2 years old
   Jack is 72 years old
 */

(0...3).reversed().forEach { index in
    print("\(index)..")
}

// Output - 3, 2, 1, 0


/*
 ForIn vs forEach
 
 We can’t use the break and continue statements using forEach
 Using the return statement in the body closure will only exit the closure and not the outer scope, and it won’t skip subsequent calls.

 */

var evenNumbers = [Int]()
for number in (0...100) {
    guard evenNumbers.count < 10 else {
        break
    }

    guard number % 2 == 0 else {
        continue
    }
    evenNumbers.append(number)
}
print(evenNumbers)

// [0, 2, 4, 6, 8, 10, 12, 14, 16, 18]


/* array.prefix(_:)
 The array.prefix(_:) method is used to return a new array that contains the number of elements specified by the argument that is passed to
 */
print(cities.prefix(10))


/* While Loop */

func rollDice() -> Int {
    return (1...6).randomElement()!
}

let maxTries = 6
var tries = 0
var score = 0

while tries < maxTries {
    score += rollDice()
    tries += 1
}

print("Total score is \(score)")


/*  Repeat while loops */

repeat {
    score += rollDice()
    tries += 1
} while tries < maxTries

print("Total score is \(score)")
