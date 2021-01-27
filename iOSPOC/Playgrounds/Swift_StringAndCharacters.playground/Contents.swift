//: Playground - noun: a place where people can play
//Created On : XCode 11.0
// By : Rahul Goel CSE

import Cocoa

var str = "Hello, playground For String and characters"

//A string is a series of characters, such as "hello, world" or "albatross". Swift strings are represented by the String type

//1. String Literals
//A string literal is a sequence of characters surrounded by double quotation marks (")
let stringLiteral = "string literal"

//2. Multiline String Literals : If you need a string that spans several lines
let quotation = """
SpaceX, is a private American aerospace manufacturer and space
transportation services company headquartered in Hawthorne, California
"""

//3. Initializing an Empty String
var emptyString = ""
//or
var anotherEmptyString = String()

//4. String Mutability
//You indicate whether a particular String can be modified (or mutated) by assigning it to a variable (in which case it can be modified), or to a constant (in which case it can’t be modified)
var mutableString = "Life on Mars"
let imutableString = "Life on Earth"

//5.
//Strings Are Value Types
//If you create a new String value, that String value is copied when it’s passed to a function or method, or when it’s assigned to a constant or variable.


//6. Working with Characters
//Iterating over characters of given string
for character in mutableString{
    print(character)
}

//7. Concatenating Strings
let str1 = "The Universe is under no obligation"
let st2 = "to make sense to you"
var quote = str1 + st2

//8. String Interpolation
//String interpolation is a way to construct a new String value from a mix of constants, variables, literals, and expressions by including their values inside a string literal
let years:Int = 1000
let desc:String = "For Our Planet Earth only"
var fact = "\(desc)\(years) has passes so far"

//9. Inserting and Removing


//10. Comparison


//11. Comparing Strings









