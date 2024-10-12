/*
 Equatable protocol is used for compare two custom object
  Note -
    1- In case of struct if we confirm equatable protocol no need to confirm it's method but in case of class it's required
    2- If we have not confirmed it's method and try to compare two object internally complier compare all properties. like name and radius both compare.if you want only one property should check then confirm methods.
    3- Equatable is also the base protocol for the Hashable and Comparable protocols
 
  4- In content of struct automatically becomes comparable without the need to implement a custom equation method since all members (UUID and String) are comparable.
 */

struct CityName: Equatable {
    let name: String
    let radius: Float
    static func != (lhs: Self, rhs: Self) -> Bool {
        return lhs.name == rhs.name
    }
}

let cityNameOne = CityName(name: "Delhi", radius: 400)
let cityNameTwo = CityName(name: "Delhi", radius: 7000)

if cityOne == cityTwo {
    print("Both city name is equal")
}


struct City: Equatable {
    let name: String
    let radius: Float
}

let cityOne = City(name: "Delhi", radius: 400)
let cityTwo = City(name: "Noida", radius: 7000)

// Get error if Equatable protocol not confirm in this case binary operator '==' cannot be applied to two 'City' operands
if cityOne == cityTwo {
    //print("Both city is equal")
}

//
if cityOne == cityTwo {
    print("Both city is equal")
}

/*
 if we add a new member that doesn’t conform to Equatable:
 */
struct Author: Equatable {
    let name: String
}

struct Content {
   
    let id = UUID()
    let title: String
    let author: Author
}
