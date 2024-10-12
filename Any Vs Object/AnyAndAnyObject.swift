
import Foundation


/*
 Any  can represent any instance of any type at all, including function and option type.
 AnyObject can represet only instance of class type
 
 
 */


var name: Any

name = "String"
name = 1


var country: AnyObject
//country = "Hello" // Get error here because anyobject can store only class instance




/*
 Difference between any and generic -
    If we use any in place of generic then we have to perform some extra work like type case and value loss problem.
 Generic provide type safty.

 */


func printGeneric<T>(a: T, b: T) {
    print(a)
    print(b)
}

printGeneric(a: 10, b: 20)
//printGeneric(a: 10, b: "") // Get error here to resolve this issue use below method


func printGenericString<T, U>(a: T, b: U) {
    print(a)
    print(b)
}

printGenericString(a: 10, b: "Dev")


func swapTwoNumber<T>(a: inout T, b: inout T) {
    let temp = a
    a = b
    b = temp
}

var a = "Ram"
var b = "Sita"

swapTwoNumber(a: &a, b: &b)
print("A is - \(a) and B is \(b)")


debugPrint("A is - \(a) and B is \(b)")


let divide = 12  / 5        // 2
let divide1 = 12.0  / 5     // 2.4
