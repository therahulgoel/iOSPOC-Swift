//: Playground - noun: a place where people can play
//Created On : XCode 11.0
// By : Rahul Goel CSE

import Cocoa

var str = "Hello, playground optional chaining"

//Optional chaining lets you run code only if your optional has a value

var name:String?
"\(name?.count)"  //count function will not be called as name is nil

name = "Rahul Goel"
"\(name?.count)" //count function will be called as name has a value


//The nil coalescing operator : "If (left side ) is nil then provide some default value (right side)"
var check:String?
check ?? "check is nil"





