//: Playground - noun: a place where people can play
//Created On : XCode 11.0
// By : Rahul Goel CSE

import Cocoa

var str = "Hello, playground For Functions"

/*  :
 Functions are self-contained chunks of code that perform a specific task. You give a function a name that identifies what it does, and this name is used to “call” the function to perform its task when needed.
*/

//1. Function Which takes Zero input parameters and returns a String
func function1()->String{
    return ""
}
function1()

//2. Function which takes Zero input parameters and returns nothing or Empty Function
func function2(){
    
}
function2()

//3. Function Which takes One input parameter and returns the same
func function3(str:String)->String{
    return str
}
function3(str: "Rahul Goel")


//4. Function Which takes two numbers as input and returns the sum of them
func function4(a:Int,b:Int)->Int{
    return a+b
}
function4(a: 3, b: 4)

//5. Nested functions
func outerFunction(){
    let outerVariable = 0
    
    func innerFunction(){
        let innerVariable = 1
        print(outerVariable,innerVariable)
    }
    innerFunction()
}
outerFunction()


//mutating keyword
//In swift, classes are reference type whereas structures and enumerations are value types. The properties of value types cannot be modified within its instance methods by default. In order to modify the properties of a value type, you have to use the mutating keyword in the instance method.

struct someStructure{
    var property1:String = ""
    
    mutating func updateProperty(){
        self.property1 = "Mutation Successful in Value Types"
    }
}


//Methods Swizzing : Method Swizzling is a well-known practice in Objective-C and in other languages that support dynamic method dispatching. Through swizzling, the implementation of a method can be replaced with a different one at runtime.

//It is Objective C Runtime Feature


//Method Dispatch in Swift
/*Compiled Languges have three primary methods of dispatch:
    1. Direct Dispatch
    2. Table Dispatch
    3. Message Dispatch
 
 
 */

//Default Parameters in functions



