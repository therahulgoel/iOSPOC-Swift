//: Playground - noun: a place where people can play
//Created On : XCode 11.0
// By : Rahul Goel CSE

import Cocoa

var str = "Hello, Playground For Closures"

/* Apple :
 Closures are self-contained blocks of functionality that can be passed around and used in your code. Closures in Swift are similar to blocks in C and Objective-C and to lambdas in other programming languages.
 Closures are reference types
 */

//1. Closure Which takes Zero input parameters and returns a String
var closure1 = { ()-> String in
    return ""
}
closure1()


//2. Closure which takes Zero input parameters and returns nothing or Empty Closure
var closure2 = { ()-> Void in
    
}
closure2()

//3. Closure Which takes One input parameter and returns the same
var closure3 = { (str:String)->String in
    return str
}
closure3("therahulgoel")


//4. Closure Which takes two numbers as input and returns the sum of them
var closure4 = { (a:Int,b:Int)->Int in
    return a+b
}
closure4(2,3)

/*5.
 Escaping Closure :  Storing the closure to a global variable, property, or any other bit of storage that lives on past the function call means the closure has also escaped. By the time the function ends, the closure could still be out there in the world somewhere, that we can use later on.
 
 Non-Escaping Closure : When the function ends, the passed-in closure goes out of scope and there were no additional references made to the closure.
 
In Swift 3, closure parameters are non-escaping by default; you can use the new @escaping attribute if this isn’t what you want. Non-escaping closures passed in as arguments are guaranteed to not stick around once the function returns.
 
 */


// Non Escaping Closure : Default Ones ------------
class classA{
    var someProperty:String?
    //Takes a closure (non - escaping by default)
    func someMethod(closure:()->Void){
        /*Here you can access any property or method from class or enclosed scope as compiler
         knows this closure wont escape so no risk of retain cycle
         */
        someProperty = "therahulgoel"
    }
}

class classB{
    let a = classA()
    var someProperty:String = "Hi"
    
    func testClosure(){
        a.someMethod {
            //Accessing Self Property Inside Closure
            //The closure is still capturing self but since the closure won’t live past calling someMethod,
            //the compiler knows there’s no retain cycle risk: there’s no chance that closure parameter will make it out.
            //No Need to use self here in accessing the property
            print(someProperty)
        }
    }
}
//---------------------


//Escaping Closure : ----------
class classC{
    
    //Takes a closure (marked as Escaping explicitly)
    func someMethod1(closure:@escaping ()->Void){
        
    }
}

class classD{
    let c = classC()
    var someProperty:String = "Hi"
    
    func testClosure(){
        c.someMethod1 { [weak self] in
            print(self?.someProperty ?? "")
        }
    }
}
//--------------------------------


//Swift lazy Initializetion with Closures
class IntenseMathProblem{
    
    //This property will only be computed when you try to access it, not everytime you create object of the class.
    lazy var complexNumber:Int = {
        //Consider it require a lot of CPU
        return 1
    }()
}
//----------------------------------

//Trailing Closures
/*
 If you need to pass a closure expression to a function as the function’s final argument and the closure expression is long,
 it can be useful to write it as a trailing closure instead.
 A trailing closure is written after the function call’s parentheses, even though it is still an argument to the function.
 When you use the trailing closure syntax, you don’t write the argument label for the closure as part of the function call.
 */

func someFunctionThatTakesAClosre(closure:()->Void){
    print("someFunctionThatTakesAClosre")
}

// Here's how you call this function without using a trailing closure:
someFunctionThatTakesAClosre(closure: {
})

// Here's how you call this function with a trailing closure instead:
someFunctionThatTakesAClosre() {
}

// If closure is the only parameter in method then dont even need pair of parentheses
someFunctionThatTakesAClosre {
}

func withfunctionThatTakesAClosreAndOneMoreArgyment(agr1:String, closure:()->Void){
    print("withfunctionThatTakesAClosreAndOneMoreArgyment")
}

//Calling Without trailing closure syntax
withfunctionThatTakesAClosreAndOneMoreArgyment(agr1: "", closure: {
})

//Calling With trailing closure syntax
withfunctionThatTakesAClosreAndOneMoreArgyment(agr1: ""){
}


//----------------------------------

//Shorthand Argument Names
/* Swift automatically provides shorthand argument names to inline closures.
which can be used to refer to the values of the closure’s arguments by the names $0, $1, $2, and so on.
 */

func shortHandClosureArgumentSyntax(arg1:String, closure:(Int, Int)->Int){
}
shortHandClosureArgumentSyntax(arg1: "sum"){
    return $0 + $1
}


//Closure to add two numbers
public var sum:(Int,Int)->Int = { (a,b) in
    return a + b
}
sum(3,4)

//Passing array of closures as argument in some function
class Something{
    func arrayOfClosuresAsArgument(closure:[(String)->String]){
    }

    func alpha(param1 : Int, completionArr : [(Int) -> Void]){
    }
    
    func someTestMethod(){
        alpha(param1: 1, completionArr: [{ a in
            }])
        arrayOfClosuresAsArgument(closure: [{a in return a}])
    }
}
Something().someTestMethod()

//Auto-Closures


func doSomething() {
    var arr = [10, 20, 30]
//    var i = 0
//    for i in 0..<arr.count {
////        arr[i] = i1 + 10
////        i += 1
//
//        print("ith Ele \(arr[i])")
//        arr = [7,8,9,10]
//    }
//    print(arr)
        
    var count = 0
    for i in arr {
        print("before remove \(arr)")
        arr.remove(at:2)
        print("after remove \(arr)")
        arr.append(100)
        arr.append(150)
        print("after append \(arr)")
        print("ith Ele \(i)")
        //arr = [7,8,9]
        count += 1
        print("\(count) ")
        print("inside loop \(arr)")
    }
    print("outside loop \(arr)")
    
//    print(arr)
}

doSomething()



