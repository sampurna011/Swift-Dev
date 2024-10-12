/*
 A type that can be compare using relational operator - <=, >= >, <
 */


struct CityName: Comparable {
    let name: String
    let radius: Float
    
    static func < (lhs: CityName, rhs: CityName) -> Bool {
        return lhs.radius < rhs.radius
    }
   
}

let cityNameOne = CityName(name: "Delhi", radius: 400)
let cityNameTwo = CityName(name: "Delhi", radius: 7000)

if cityNameOne == cityNameTwo { //
    print("Both city name is equal")
}

if cityNameOne < cityNameTwo { //
    print("Both city radius is less")
}
