/*
 A dispatch barrier allows us to create a synchronization point within a concurrent dispatch queue. In normal operation, the queue acts just like a normal concurrent queue. But when the barrier is executing, it acts as a serial queue. After the barrier finishes, the queue goes back to being a normal concurrent queue.
 It allows you to make a thread-unsafe object to thread-safe.
 */

class Logger {
    
    static var shared = Logger()
    private init() {} // private init ensure that only one object can be created
}


// Make singleton thread safe
class SingleWithTreadSafe {
    
    static var shared = SingleWithTreadSafe()
    private init() {}
    private var logDict = [String: Any]()
    private let serialQueue = DispatchQueue(label: "singleWithTreadSafe-serial", attributes: .concurrent)
    
    func writeLog(key: String, value: Any) {
        serialQueue.async(flags: .barrier) { [weak self] in
            self?.logDict[key] = value
            print("Key is \(key) and value is \(value)")
        }
    }
}

let queue = DispatchQueue(label: "SingleWithTreadSafe", attributes: .concurrent)

for i in 1...200 {
    queue.async {
        SingleWithTreadSafe.shared.writeLog(key: "\(i)", value:  200)
    }
}
