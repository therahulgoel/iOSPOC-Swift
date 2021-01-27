//: Playground - noun: a place where people can play
//Created On : XCode 11.0
// By : Rahul Goel CSE

import Foundation

var str = "Hello, playground for Basics"

//Swift is a new programming language for iOS, macOS, watchOS, and tvOS app development.

//1. Constants and Variables
//The value of a constant can’t be changed once it’s set, whereas a variable can be set to a different value in the future.
let aConstant = 100
var aVariable = 100

//2. Type Annotations
//To be clear about the kind of values the constant or variable can store
var msg:String = ""
var val1 = 0
//3. Printing Constants and Variables
msg
print(val1)

//4. Comments
//Comments are ignored by the Swift compiler when your code is compiled.
//This is comment
/*
    MultiLineComment
 */

/*
    /*
        MultiLine Nested Comments
    */
 */


//5. Semicolons are optional
var a = 0;
var a1 = 0

//6.  Integers
let minValue = Int.min
let maxValue = Int.max
//Swift also provides an unsigned integer type, UInt, which has the same size as the current platform’s native word size:
let minValueU = UInt.min
let maxValueU = UInt.max


//7. Floating Point Numbers : numbers are numbers with a fractional component
let dob:Double = 0.123456789123456789  //Upto 15 point precision
let flot:Float = 0.123456789123456789  //Upto 6 point precision


//8. Type Safety and Type Inference
/*
 Swift always chooses Double (rather than Float) when inferring the type of floating-point numbers.

 */

//9. Numeric Literals
let decimalInteger = 17
let binaryInteger = 0b10001       // 17 in binary notation
let octalInteger = 0o21           // 17 in octal notation
let hexadecimalInteger = 0x11     // 17 in hexadecimal notation


//10. Numeric Type Conversion


//11. Type Aliases : To define an alternative name for an existing type
//Type aliases are useful when you want to refer to an existing type by a name that is contextually more appropriate.
typealias AudioSample = UInt


//12. Booleans
let boolean:Bool = true

//13. Tuples Named Tuple : To group multiple values into a single compound value. The values within a tuple can be of any type
let tuple : (a:Int,b:String) = (2,"cool")  //Named Tuple
    tuple.a
    tuple.b
let unnamed = ("Planet",2.0,"SpaceX")
unnamed.0
unnamed.1
unnamed.2


//14. Optionals
/*
You use optionals in situations where a value may be absent.
An optional represents two possibilities: Either there is a value, and you can unwrap the optional to access that value, or there isn’t a value at all.
The concept of optionals doesn’t exist in C or Objective-C. The nearest thing in Objective-C is the ability to return nil from a method that would otherwise return an object, with nil meaning “the absence of a valid object.” However, this only works for objects—it doesn’t work for structures, basic C types, or enumeration values. For these types, Objective-C methods typically return a special value (such as NSNotFound) to indicate the absence of a value
 */
var nameNew:String! = "therahulgoel" //Implicitly Unwrapped Optionals
//Sometimes it’s clear from a program’s structure that an optional will always have a value, after that value is first set then we use Implicitly Unwrapped Optionals

var name:String? = "Rahul" //Optionals

//Don’t use an implicitly unwrapped optional when there’s a possibility of a variable becoming nil at a later point. Always use a normal optional type if you need to check for a nil value during the lifetime of a variable.

