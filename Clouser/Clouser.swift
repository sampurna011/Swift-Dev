import Foundation

/*
 Clousers are self contained blocks of functionality that can be pass around and use in your code
 */

// Syntax - Clouser with no parameter
var message = {
    print("Hello Clouser")
}
message()


// Syntax - Clouser with  parameter
var displayName = { (name: String) in
    print("Hello Clouser \(name)")
}
displayName("World")


// Syntax - Clouser with  parameter and return type
var sumTwoNumber = { (num1: Int, num2: Int) -> (Int) in
   return num1 + num2
}
print(sumTwoNumber(5,1))


// Output question
//Capturing values:

var name = "Deepu"

var clouser1 = {
    print("I Love \(name)")
}
var clouser2 = { [name] // capture the value
    print("I Love \(name)")
}

var clouser3 = { [name]  in  // In this clouser create a copy of capture varible
    print("I Love \(name)")
}

name = "IOS"
clouser1()
clouser2()
clouser3()


var technology = "Android"
var code = "IOS"
var clouser4 = { [technology]  in
    print("I Love \(code)")
    print("I Love \(technology)")
}
technology = "React"
code = "Dev"
clouser4()



func excute() -> (Int) -> Int {
    var input = 0
    
    return { output in
        input = input + output
        return input
    }
}

let op = excute()
let a = op(5)
let b = op(10)
let c = op(15)
print(c)

//clouser as funtion parameter

func printMessage(myClouser: () -> ()) {
    print("Hello printMessage method ")
    myClouser()
}

printMessage {
    print("Mehtod calle")  // This is also called trailing clouser
}


/* Auto clouser -
 
 @autoclosure in Swift is a type of closure that allows to omit braces and make it look like a normal expression
 
 */

func debugLog(isDebugEnable: Bool, _ message: @autoclosure () -> String) {
    if isDebugEnable {
        print("[DEBUG] \(message())")
    }
}

debugLog(isDebugEnable: true, "This is autoclouser method called")


func printTest2(_ result: @autoclosure () -> Void) {
    print("Before")
    result()
    print("After")
}

printTest2(print("Hello"))


/*  Escaping and Non-Escaping Closures in Swift
 Non-Escaping -

 A non escaping clouser will not  live or remain in memory once the function that calls this clouser finish execution .  Closure in swift by default non escaping

 Escaping Clouser -

 A escaping means that a clouser will  remain in memory  after the function from which they gets called finish execution.
 
 Escaping Closure is Asynchronous and Non-Escaping Closure is Synchronous
 
 */
