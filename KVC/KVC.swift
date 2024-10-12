import Foundation

/*
KVC
 Key - value coding is a mechanism for accessing an object's properties indirectly using strings to identify property, rather than through onvocation of an accessor method or accessing them directly through instance variable.
 */


class Person {
   var name: String
    
    init(name: String) {
        self.name = name
    }
}

// With KVC 
class PersonKVC: NSObject {
    @objc dynamic var name: String
    
    init(name: String) {
        self.name = name
    }
}


let person = Person(name: "Deepu")
print("Without KVC \(person.name)")

let personKVC = PersonKVC(name: "Deepu")
print("Without KVC \(personKVC.value(forKey: "name"))")

