/* Generic:   Generic code enables you to write flexible, reusable functions and types that can work with any type. You can write code that avoids duplication

 */

func addTwoValue<T: Numeric>(a: T, b: T) {
    print(a + b)
}


addTwoValue(a: 10, b: 20)
addTwoValue(a: 10.0, b: 20.0)
//addTwoValue(a: "10.0", b: "20.0")  // String does not confirm numeric protocol


protocol Addable {
    static func +(lhs: Self, rhs: Self) -> Self
}

extension String: Addable {}
extension Int: Addable {}
extension Double: Addable {}

func add<T: Addable>(a: T, b: T) -> T {
    return a + b
}

add(a: 10, b: 20)
add(a: 10.0, b: 20.0)
add(a: "10.0", b: "20.0")
