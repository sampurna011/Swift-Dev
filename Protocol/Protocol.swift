import Foundation


/* 
 otional protocal - There are two to create optional protocol
 1- option keyword to declare any method but these method are avilabel for object c level api
 2- Second way is to create protocol extension
 
 
 */


/*
   First way to create a protocol option
    This protocol can confirm by class only because @obc protocol is class only protocol
    @objc imposed a restriction on this protocl is this protocol is reference type in swift
 */

@objc protocol ObjectiveCLevelProtocol {
    func didTap()
    @objc optional func touchBegin()
}

// Second way
protocol PureSwiftProtocol: AnyObject {  // This protocol is class only can confirm
    func didTap()
    func touchBegin()
}
extension PureSwiftProtocol {
    func touchBegin() { }
}



// Composition Protocol

protocol A {
    func sum()
}
protocol B {
    func sum()
    func divide()
}

protocol CompositionProtocl: A, B {
    func subtract()
}

class Test: CompositionProtocl {
    func subtract() { }
    func sum() { }
    func divide() { }
}


/* Associated Protocol -  Associated keyword is used for to create generic protocl because with protocl we can not use <> this symbol
 */


protocol Calculate {
    associatedtype TNumber
    func add(a: TNumber, b: TNumber) -> Int
}

class Calculator: Calculate {
   typealias TNumber = Int
    func add(a: TNumber, b: TNumber) -> Int  {
        return a + b
    }
}


//
protocol MultiplyProtocl {
    func multiply()
}

extension MultiplyProtocl {
    func multiply() {
        print("Default multiplication")
    }
}

class ASD: MultiplyProtocl {
    func multiply() {
        print("Class multiplication called")
    }
}

let objc = ASD()
objc.multiply()  // Class method call if not implemented then protocol defult implementation called



/* Property declaration */

protocol SomeProtocol {
    var mustBeSettable: Int { get }
    var doesNotNeedToBeSettable: Int { get }
}

struct Demo: SomeProtocol {
    var mustBeSettable: Int = 0
    
    var doesNotNeedToBeSettable: Int = 0
    
    
}

var objc11 = Demo()
objc11.doesNotNeedToBeSettable = 10




protocol Container {
    associatedtype Item: Equatable // Constraint to an associated type
    mutating func append(_ item: Item)
}


struct Item: Container {
    
    typealias Item = String
    
    mutating func append(_ item: String) {
        
    }
    
}
