import Foundation

/*
 Designated Intializer-  
 Designated initializers are the primary initializers for a class.
 A designated initializer fully intialize all properties introduced by that class and calls an appropriate superclass initailizer to continue the intialization process up the super class chain
  We can declare multiple designated initializer
 */

class DesignatedInit {
    var name: String
    var country: String
    
    init(name: String, country: String) {
        self.name = name
        self.country = country
    }
}


/*
 Convenience Initializer -  
 Convenience Initializer are secondary intializer
 If any parameter is common for all object on that case we can convenience initializer.
 Convenience initializers cannot be overridden by subclasses.
 Convenience initializers are secondary initializers and must ultimately call a designated initializer of the same class.
 Convenience initializers can be overload
 */

class ConvenienceInit {
    var name: String
    var country: String
    var company: String
    
    init(name: String, country: String, company: String) {
        self.name = name
        self.country = country
        self.company = company
    }
    
    convenience init(name: String) {
        self.init(name: name, country: "India", company: "")
    }
    convenience init(name: String, company: String) {
        self.init(name: name, country: "India", company: company)
    }
}


// Failable initailzer
class FailableInit {
    var name: String
    var country: String
    
    init?(name: String, country: String) {
        if name.isEmpty { return nil }
        self.name = name
        self.country = country
    }
    
    convenience init?(name: String) {
        self.init(name: name, country: "India")
    }
}


/* Required initailzer
 */


