import Foundation

/*
 the decorator pattern is a design pattern that allows behavior to be added to an individual object, dynamically, without affecting the behavior of other instances of the same class.
 Example - extension in ios
 */

protocol Cake {
    var name: String  { get }
    var price: Double { get }
}

class CheesCake: Cake {
    var name: String  {
        return "Chees Cake"
    }
    var price: Double {
        return 1200
    }
}

// Example of decorator design patter
class AddNameDecorator: Cake {
    
    private var cake: Cake
    
    init(cake: Cake) {
        self.cake = cake
    }
    var name: String  { 
        return cake.name
    }
    var price: Double { 
        return cake.price + 50
    }
}

let cheesCake = CheesCake()
print(cheesCake.name)
print(cheesCake.price)

print("******* Apply Decorator *********")

let cheesCakeDecorator = AddNameDecorator(cake: cheesCake)
print(cheesCakeDecorator.name)
print(cheesCakeDecorator.price)
