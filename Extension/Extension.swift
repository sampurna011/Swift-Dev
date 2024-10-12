import Foundation

/*
 Extensions add new functionality to an existing class, structure, enumeration, or protocol type. This includes the ability to extend types for which you don’t have access to the original source code (known as retroactive modeling). Extensions are similar to categories in Objective-C. (Unlike Objective-C categories, Swift extensions don’t have names.)
 
 Extensions in Swift can:
 -Add computed instance properties and computed type properties
 -Define instance methods and type methods
 -Provide new initializers
 -Define subscripts
 -Define and use new nested types
 -Make an existing type conform to a protocol
 
  Note -Extensions can add new functionality to a type, but they can’t override existing functionality.
 
 */

class NewType {
    var age: Int = 0
    func getName() {
        
    }
}

extension NewType {
    
  /*  override func getName() {   // Can't override a existing functionality
        
    }
   */
}


/* -----Protocol inheritance ------ */

protocol FirstProtocol {
    func sum()
}

protocol SecondProtocol {
    func sum()
}

extension NewType: FirstProtocol, SecondProtocol {
    func sum() {
        
    }
}

/* ---- Computed property
 Note - Extensions can add new computed properties, but they can’t add stored properties, or add property observers to existing properties.
 ------*/

extension NewType {
    var name: String {
        return "Deepu"
    }
}



/* --
 Extensions can add new initializers to existing types. This enables you to extend other types to accept your own custom types as initializer parameters
 
 Extensions can add new convenience initializers to a class, but they can’t add new designated initializers or deinitializers to a class. Designated initializers and deinitializers must always be provided by the original class implementation
 
 Note - If you use an extension to add an initializer to a value type that provides default values for all of its stored properties and doesn’t define any custom initializers, you can call the default initializer and memberwise initializer for that value type from within your extension’s initializer
 
 If you use an extension to add an initializer to a structure that was declared in another module, the new initializer can’t access self until it calls an initializer from the defining module.
 
 --*/

extension NewType {
  convenience  init(int: SecondProtocol) {
      self.init()
    }
}


// For value type
struct Employee {
    var name: String
    var age: String
}

extension Employee {
    init() {
        self.name = ""
        self.age = ""
    }
}



/* ----
 
 Instance methods added with an extension can also modify (or mutate) the instance itself. Structure and enumeration methods that modify self or its properties must mark the instance method as mutating, just like mutating methods from an original implementation.
 
 ----*/

extension Int {
    mutating func square() {
        self = self * self
    }
}
var someInt = 3
someInt.square()



/* -----
 
 Subscripts
 Extensions can add new subscripts to an existing type.
 
 ------*/

extension Int {
    subscript(digitIndex: Int) -> Int {
        var decimalBase = 1
        for _ in 0..<digitIndex {
            decimalBase *= 10
        }
        return (self / decimalBase) % 10
    }
}

/*
 Declare a private member in the original declaration, and access that member from extensions in the same file.
 Declare a private member in one extension, and access that member from another extension in the same file.
 Declare a private member in an extension, and access that member from the original declaration in the same file.
 */

protocol SomeProtocol {
    func doSomething()
}

struct SomeStruct {
    private var privateVariable = 12
    
    func getValueData() {
        print(value)
    }
}


extension SomeStruct: SomeProtocol {
    private var value: Int {
        return 10
    }
    
    func doSomething() {
        print(privateVariable)
    }
}

extension SomeStruct {
    func debugValue() {
        print(value)
    }
}



/* Extension with enum */


enum Color {
    case red
    case blue
    case black
}

extension Color {
  
    func getColorName() -> Color {
        switch self {
        case .red:
            return Color.red
        case .blue:
            return Color.blue
        case .black:
            return Color.black
        
        }
    }
    
}
