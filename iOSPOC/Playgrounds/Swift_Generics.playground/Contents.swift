//: Playground - noun: a place where people can play
//Created On : XCode 11.0
// By : Rahul Goel CSE

import Cocoa

var str = "Hello, playground For Generics"

/*
 Generic code enables you to write flexible, reusable functions and types that can work with any type. You can write code that avoids duplication by using generics in most cases.

 Swift’s Array and Dictionary types are both generic collections. You can create an array that holds Int values, or an array that holds String values, or indeed an array for any other type that can be created in Swift.

 */

//Swapping two values : String or Int or Double
func swapTwoValues<T> (a:inout T,b: inout T){
    let tmp = a
    a = b
    b = tmp
}

    //Usage 1 : String
    var name1 = "iOS", name2 = "Android"
    name1
    name2
    swap(&name1, &name2)
    name1
    name2

    //Usage 2 : Int
    var val1 = 5, val2 = 6
    val1
    val2
    swap(&val1, &val2)
    val1
    val2

//where clause

extension Sequence where Element:Numeric{
}







