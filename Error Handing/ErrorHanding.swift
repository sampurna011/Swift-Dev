/*
 
 We are using multiple try statement in do block  and if first of them suppose throw an error then other try statment not going to excute.
 
 With optional try? is not manadatory to use do and catch block even if we use catch block not excute in this case
 
 force unwrape is also not require any do and catch block
 
 */

enum ErrorHandler: Error {
    case nilValue
    case failure
    case success
}



func checkInput(input: String) throws {
    if input.isEmpty {
        throw ErrorHandler.nilValue   // throw keyword is used for throw exception
    } else {
        throw ErrorHandler.success
    }
}

  try? print(checkInput(input: "")) // With optional try is not manadatory to use do and catch block

do {
    try print(checkInput(input: ""))
    //try print(checkInput(input: "Deep"))
} catch (ErrorHandler.failure ) {
    print("Failure")
} catch (ErrorHandler.nilValue ) {
    print("Nil Exception")
}



/* Result type */

class ErrorHandling {
    var isActive: Bool = false
    
    func getTitle() -> Result<String, Error> {
        if isActive {
            return .success("Hello")
        } else {
            return .failure(URLError(.badURL))
        }
    }
    
    func getTitle() throws -> String {
        if isActive {
            return "hello"
        } else {
            throw URLError(.badURL)
        }
    }
    
}
