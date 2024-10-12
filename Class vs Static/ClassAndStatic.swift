import Foundation

/*
 
 class -
 
 1- we can not create any store property with class keyword in struct. with static we can
 2- Class type function access same like static function
 3- Using class we can create computed property only
 4- class property can we used with class only but static we can use with both class and struct
 5- Inside protocl also we can't use class keyword
 6- We can achieve similar to inheritance with struct using protocol with exentsion by providing defualt definition
 
 Reference Tper -
   - Class
   - Clouser
   - Actor
 
 
 Static -
 
  1- Static function can not override in subclass but class method we can
  2- Stack merrory allocation is done by complie time
  3- In struct if we declare property as private then we need to declare init method as well
 
 Note - swift does not support multiple inheritance
 
 */



class Person {
    
    var name: String = ""
    static var country: String = "India"
    static var role: String = "Software Engineer"
   // class  var role = "Software Engineer" // We can't create store property with class
    
    class var department: String {  // class is allowed with computed property
       return "Software development"
    }
    
    func printName() {
        print(name)
    }
    
   static func printCountry() {
        print(country)
    }
    
    class func printRole() {
        print(role)
    }
}

let objc = Person()
objc.printName()

Person.printCountry()
Person.printRole()


protocol Test {
   // class var name: String
    
    /*Error - Class properties are only allowed within classes; use 'static' to declare a requirement fulfilled by either a static or class property */
}


/* Example  */


class Tax {
    var gst: Double
    
    init(gst: Double) {
        self.gst = gst
    }
}

struct Item {
    var totalPrice: Double
    var tax: Tax
}


let item1 = Item(totalPrice: 99, tax: Tax(gst: 9))
var item2 = item1

item2.totalPrice = 150
item2.tax.gst = 15

print("Itme first total price is \(item1.totalPrice), and gst is \(item1.tax.gst)")
print("Itme first total price is \(item2.totalPrice), and gst is \(item2.tax.gst)")


struct PrivateItem {
    private var num: Int
}

//let privateNum = PrivateItem(num: 100)  // Complier gives an error 'PrivateItem' initializer is inaccessible due to 'private' protection level


struct StructTest {
    var someVariable: Int
    
   /* init(value: Int) {
        //self.someVariable = someVariable
       // self.init(someVariable: value)  // This like convenience initializer
    } */
}

// To achive below is way
extension StructTest {
    init(value: Int) {
        self.init(someVariable: value)
    }
}

let rain = #"The "rain" in "Spain" falls mainly on the Spaniards."#
print(rain)
