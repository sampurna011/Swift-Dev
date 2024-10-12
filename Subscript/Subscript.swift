
struct CountingNumber {
    var numbers = ["One", "Two", "Three", "Four", "Five", "Six", "Seven"]
    
    subscript(index: Int) -> String {
        return numbers[index]
    }
}

print(CountingNumber()[0])
