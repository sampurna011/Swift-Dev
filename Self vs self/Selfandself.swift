import Foundation
import UIKit
/*
 == is used for to compare content  of the instace
 === (identity operators) is used to compare instance address. This is used with class refresnce only
 
 */


/*
 Self- Self is a type
 self- self is an object
 */


struct Employee {
    var name: String
    
    init(name: String) {
        self.name = name  // Here self represent the current object of name
    }
    
    func checkName() {
        print(name.isValidName())
    }
}

extension String {
    func isValidName() -> Bool {
        return self.count > 0
    }
}



// Self


struct EmployeeDetail {
    var name: String
    static var country: String = "India"
    
    init(name: String) {
        self.name = name  // Here self represent the current object of name
    }
    
    // Here we can user country with "EmployeeDetail.country" or  "Self.country"
    func completeAddress() {
        print("\(name) live in \(Self.country)")
    }
}


extension UIViewController {
    static func instancetiateFromNib() -> Self {
        func instancetiateFromNib<T: UIViewController>(_viewType: T.Type) -> T  {
            return T.init(nibName: String(describing: T.self), bundle: nil)
        }
        
        return instancetiateFromNib(_viewType: self)
    }
}
