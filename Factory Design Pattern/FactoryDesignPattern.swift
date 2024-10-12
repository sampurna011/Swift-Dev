import Foundation


/*
 The Factory Design Pattern is a creational design pattern used in object-oriented programming to create objects
 
 */
protocol Bike {
    func manufacturBike()
}

class Yahama: Bike {
    func manufacturBike() {
        print("Manufactur samsung tv")
    }
}

class Honda: Bike {
    func manufacturBike() {
        print("Manufactur LG tv")
    }
}

class RoyalEnfield: Bike {
    func manufacturBike() {
        print("Manufactur sony tv")
    }
}


protocol TelevisionFactoryDelegate {
    func televisionProduction(companyName: BikeCompanyType) -> Bike
}

enum BikeCompanyType {
    case honda
    case yahama
    case royalEnfield
}

class TelevisionFactory: TelevisionFactoryDelegate {
    func televisionProduction(companyName: BikeCompanyType) -> Bike {
        switch companyName {
        case .honda:
            return Honda()
        case .yahama:
            return Yahama()
        case .royalEnfield:
            return RoyalEnfield()
        }
    }
}
