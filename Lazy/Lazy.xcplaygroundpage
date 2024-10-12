import Foundation

/*
 A lazy var is a property whose initial value is not calculated until the first time it’s called.
 */


class Person {
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    lazy var fullName: String = {
        return firstName + lastName
    }()
    
    var fullComputedName: String {
        return firstName + lastName
    }
}


var person = Person(firstName: "IOS", lastName: "Dev")

print(person.fullName)   // IOSDev
print(person.fullComputedName) // IOSDev

/*   */
person.lastName = "Trainer"
print(person.fullName) // IOSDev   // Lazy property behave like store property
print(person.fullComputedName) // IOSTrainer : Computed proterty always pick the latest value


person.fullName = "IOSTrainer"
print(person.fullName)  // "IOS Trainer"



struct Employee {
    let name: String
    let age: Int
}

struct PeopleViewModel {
    let people: [Employee]
    
    var oldest: Employee?  {
        print("Stored var oldest initialized")
        return people.max(by: { $0.age < $1.age })
    }
    
    lazy var oldest1: Employee? = {
        print("Lazy var oldest initialized")
        return people.max(by: { $0.age < $1.age })
    }()
    
    init(people: [Employee]) {
        self.people = people
        print("View model initialized")
    }
}

/* The difference between a computed and a lazy stored property in above class is
  If we would’ve used a computed property, the value oldest would be recalculated every time again:
  In case of lazy intialisation only one time called
 
 Lazy stored properties are mutable
 
 Another thing to realize is the fact that lazy variables are mutable. This means you can only call lazy variables on mutable structs:
 below we can not create with let
 */

var viewModel = PeopleViewModel(people: [
    Employee(name: "Antoine", age: 30),
    Employee(name: "Jaap", age: 3),
    Employee(name: "Lady", age: 3),
    Employee(name: "Maaike", age: 27)
])

print(viewModel.oldest1!)
print(viewModel.oldest1!)
print(viewModel.oldest1!)

print(viewModel.oldest!)
print(viewModel.oldest!)
print(viewModel.oldest!)



/*
  
 */



