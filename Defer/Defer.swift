import UIKit


var value = 0
func incraementValue() -> Int {
    defer {
       value = value + 1
    }
    return value
}

print(incraementValue())
print(value)


func incraementNewValue(){
    print("Step - 1")
    defer {
        defer {
            print("Step - 6")
        }
        print("Step - 2")
    }
    defer {
        print("Step - 3")
    }
    defer {
        print("Step - 4")
    }
    defer {
        print("Step - 5")
    }
    print("Step - 7")
}
print(incraementNewValue())

// 1, 7, 5, 4, 3, 2, 6



enum ErrorHandler: Error {
    case nilValue
    case failure
    case success
}

func checkReturnType() throws {
    defer {
       // throw ErrorHandler.nilValue
        /* Errors cannot be thrown out of a defer body */
    }
    print("Step - 5")
}
