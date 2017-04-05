//: Playground - noun: a place where people can play

import UIKit

func sayHello1(name: String) -> String {
    return "Hello \(name)"
}

func sayHello2(_ name: String) -> String {
    return "Hello \(name)"
}

print(sayHello1(name: "yyfan"))
print(sayHello2("yyfan"))

func rollDice(numberofDice: Int, time: Int, withBonus: Int) -> Void {
    
}

rollDice(numberofDice: 2, time: 3, withBonus: 10000)

/*
 External Parameter Name
 */
func rollDice1(numberofDice num: Int, time: Int, withBonus: Int) -> Void {
    
}

/*
 Internal Parameter Name
 */
func rollDice2(_ numberofDice: Int, time: Int, withBonus: Int) -> Void {
    
}

/*
 Parameter with default value
 */
func rollDice3(_ numberofDice: Int, time: Int, withBonus: Int = 0) -> Void {
    
}

/*
 Unlimited Parameter
 */
func add(_ nums: Double...) -> Double {
    var sum = 0.0
    for num in nums {
        sum += num
    }
    return sum
}

/*
 Pass By Reference
 */
func passByReference(num: inout Int){
    num = 99
}

var myNum = 1
passByReference(num: &myNum)
print(myNum)

/*
 Anonymous Func
 */
let addFunc = { (left : Int, right: Int) -> Int in return left + right }

let addFunc2 : (Int, Int) -> Int = {(left, right) in left + right}

/*
 Func as a Parameter
 */
func greetLTR(name: String) -> String {
    return "Hello \(name)"
}

func greetRTL(name: String) -> String {
    return "\(name), hello"
}

func greet(name: String, greetFunc: (String) -> String){
    print(greetFunc(name))
}

greet(name: "yyfan", greetFunc: greetRTL)

/*
 Nested Func
    is able to access the outscope variable
 */
func nestFunc(name: String) {
    func test() -> String {
        return "hi \(name)"
    }
}

/*
 Trailing Closure
 */
greet(name: "yyfan") { name in return "hello \(name)"}


/*
 Multi-type Array
 */
let multiTypeArray = [1, 2, "three"] as  [Any]

func whoKnows() -> Any {
    return "String"
}

/*
 Dictionary
 */
let myDict = ["a": 1, "b": 2, "c": "three"] as [String: Any]

func dictParam(sumMe: [NSObject: Any]){
    
}

















